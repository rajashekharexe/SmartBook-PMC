.class public Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "MarketAttributesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/CropChanger;
.implements Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;
.implements Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;,
        Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$NumericDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$DecimalDigitsInputFilter;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final GET_CAM_IMG_FIRST:I = 0x65

.field private static final ISDONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MarketAttributes"

.field public static ctxt:Landroid/content/Context;

.field private static listAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field private static listAttributes_child:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mEntryArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private static mEntryArrIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AlertlistAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field private activityAssignmentId:I

.field private activityId:I

.field private activityName:Ljava/lang/String;

.field private addvillageLayout:Landroid/widget/LinearLayout;

.field private assignmentDetails:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

.field private assignmentID:I

.field private attributeHashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field private brands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public brandsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/BrandsModel;",
            ">;"
        }
    .end annotation
.end field

.field private btnClose:Landroid/widget/TextView;

.field private btnDiscard:Landroid/widget/TextView;

.field private btnDone:Landroid/widget/TextView;

.field private btnfinish:Landroid/widget/Button;

.field private btnnotDone:Landroid/widget/TextView;

.field private childValuelistAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private countVillage:I

.field private cropChageListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

.field private cropId:Ljava/lang/String;

.field protected d_remarks:Landroid/app/Dialog;

.field public dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FieldData;",
            ">;"
        }
    .end annotation
.end field

.field private datePos:I

.field datesListener:Landroid/view/View$OnClickListener;

.field private demoActivity:I

.field private dos:Ljava/lang/String;

.field private farmerId:Ljava/lang/String;

.field private firstChild:I

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

.field private imageFile:Ljava/io/File;

.field private imageView:Landroid/widget/ImageView;

.field private isPlanned:I

.field private isSelfassign:I

.field private ismba:I

.field private layoutId:I

.field listener:Lcom/conceptglobal/pmc/utils/CompressListener;

.field private locationBtn:Landroid/widget/Button;

.field private locationFlag:I

.field private locationInfo:Lcom/conceptglobal/pmc/model/LocationInfoModel;

.field private locationLayout:Landroid/widget/LinearLayout;

.field private locationService:Lcom/conceptglobal/pmc/utils/LocationService;

.field private locationView:Landroid/view/View;

.field private mAddDynamicLinear:Landroid/widget/LinearLayout;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDatetext:Landroid/widget/EditText;

.field private mDay:I

.field private mEntryEdt:Landroid/widget/EditText;

.field private mFiledStr:Ljava/lang/String;

.field private mForDates:I

.field private mForOperations:I

.field private mImageviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private mMonth:I

.field private mYear:I

.field private mattributesnamesArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private noofvillagesEdt:Landroid/widget/EditText;

.field private objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

.field operationListener:Landroid/view/View$OnClickListener;

.field operationListenerMultiSelect:Landroid/view/View$OnClickListener;

.field private pairID:Ljava/lang/String;

.field private parentAttributeId:I

.field private queries:Lcom/conceptglobal/pmc/common/Queries;

.field private remarkNames:[Ljava/lang/String;

.field private remarkids:[Ljava/lang/String;

.field private segmentId:I

.field private setCount:I

.field private textActivityName:Landroid/widget/TextView;

.field private transId:J

.field private villageDetails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->layoutId:I

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->childValuelistAttributes:Ljava/util/List;

    const/4 v1, -0x1

    .line 143
    iput v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForOperations:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForDates:I

    .line 145
    iput v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->datePos:I

    .line 155
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mFiledStr:Ljava/lang/String;

    .line 158
    const-string v1, "0"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->farmerId:Ljava/lang/String;

    .line 160
    iput v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationFlag:I

    .line 171
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->villageDetails:Ljava/util/Map;

    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    .line 203
    iput v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->countVillage:I

    .line 209
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    .line 210
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->dataList:Ljava/util/List;

    .line 222
    iput v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setCount:I

    .line 1425
    new-instance v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$8;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->operationListener:Landroid/view/View$OnClickListener;

    .line 1448
    new-instance v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 1566
    new-instance v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$10;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$10;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->datesListener:Landroid/view/View$OnClickListener;

    .line 1597
    new-instance v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$12;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 1724
    new-instance v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$13;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$13;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    return-void
.end method

.method static synthetic access$1000()Ljava/util/List;
    .locals 1

    .line 96
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArrIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/util/List;
    .locals 1

    .line 96
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->farmerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->transId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Lcom/conceptglobal/pmc/common/Queries;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->resetListdata()V

    return-void
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->addvillageLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->parentAttributeId:I

    return p1
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->pairID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->pairID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->findCurrentLocation()V

    return-void
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setListeners()V

    return-void
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->showRemarkSelectionAlert()V

    return-void
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/widget/TextView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->btnnotDone:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->demoActivity:I

    return p0
.end method

.method static synthetic access$2302(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->demoActivity:I

    return p1
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->assignmentID:I

    return p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)[Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->remarkNames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Lcom/conceptglobal/pmc/interfaces/CropChanger;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->cropChageListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/content/Context;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->ismba:I

    return p0
.end method

.method static synthetic access$2902(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->datePos:I

    return p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityId:I

    return p0
.end method

.method static synthetic access$3002(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mYear:I

    return p1
.end method

.method static synthetic access$3102(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$3202(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDay:I

    return p1
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->updateDisplay()V

    return-void
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/Map;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->villageDetails:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->villageDetails:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setCount:I

    return p0
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/List;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->AlertlistAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/List;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->childValuelistAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->isPlanned:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->segmentId:I

    return p0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    .line 96
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->findModelPosition(Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$810(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I
    .locals 2

    .line 96
    iget v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForOperations:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForOperations:I

    return v0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/List;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mattributesnamesArr:Ljava/util/List;

    return-object p0
.end method

.method private addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Lcom/conceptglobal/pmc/model/FieldData;)V
    .locals 11

    .line 2013
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 2016
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 2017
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noAttribsAvailToastSA()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 2021
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2022
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 2023
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2025
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2027
    iget v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->layoutId:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 2032
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, -0xbbbbbc

    .line 2033
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2034
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Set "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2036
    iget v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2039
    const-string v8, ""

    move-object v0, v8

    const/4 v9, 0x0

    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_6

    .line 2040
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2042
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->childValuelistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2043
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->childValuelistAttributes:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->pairID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->performFiltering(Ljava/util/List;Ljava/lang/String;I)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v0

    .line 2044
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2045
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2050
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->firstChild:I

    if-ne v0, v1, :cond_2

    .line 2051
    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/FieldData;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v8

    .line 2054
    :goto_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_2

    .line 2056
    :cond_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->firstChild:I

    if-ne v1, v2, :cond_4

    .line 2057
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/FieldData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    :cond_4
    :goto_2
    move-object v10, v0

    .line 2060
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->attributeHashmap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2061
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->attributeHashmap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    :cond_5
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2065
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v4, v10

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V

    add-int/lit8 v9, v9, 0x1

    move-object v0, v10

    goto/16 :goto_0

    .line 2068
    :cond_6
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    .line 2069
    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2071
    invoke-virtual {p2, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static cloneList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation

    .line 1231
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1232
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1233
    new-instance v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v2, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private doDiscardOperation()V
    .locals 6

    .line 1539
    const-string v0, "MarketAttributes"

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityId:I

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->farmerId:Ljava/lang/String;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityAssignmentId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDiscardForActivities(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1542
    :try_start_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 1543
    const-string v2, "2"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1545
    :try_start_2
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1546
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1550
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1553
    :goto_0
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1554
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1555
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 1557
    sput-boolean v0, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    .line 1558
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1559
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1561
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->btnnotDone:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private findCurrentLocation()V
    .locals 4

    .line 1735
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1739
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$14;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$14;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    const-string v2, "MarketAttributes"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1755
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private findModelPosition(Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1182
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1185
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getData()V
    .locals 5

    .line 285
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 287
    const-string v2, "MODELCLASS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->assignmentDetails:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 288
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->ismba:I

    .line 289
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->farmerId:Ljava/lang/String;

    .line 290
    const-string v1, "ISSELFASSIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->isSelfassign:I

    .line 291
    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->segmentId:I

    .line 292
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityId:I

    .line 293
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->isPlanned:I

    .line 294
    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityName:Ljava/lang/String;

    .line 295
    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityAssignmentId:I

    .line 296
    const-string v1, "TRANSID"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->transId:J

    .line 297
    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->assignmentID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 299
    const-string v1, "MarketAttributes"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 252
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->cropChageListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

    .line 254
    sput-object p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->ctxt:Landroid/content/Context;

    const v0, 0x7f0902bd

    .line 255
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const v0, 0x7f090050

    .line 256
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->textActivityName:Landroid/widget/TextView;

    .line 257
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 258
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->attributeHashmap:Ljava/util/HashMap;

    .line 260
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->addvillageLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x7f090006

    .line 262
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->btnfinish:Landroid/widget/Button;

    .line 266
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 268
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private loadAttributes(I)V
    .locals 9

    .line 331
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityAssignmentId:I

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->transId:J

    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    .line 332
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noAttribsAvailToastSA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 335
    :cond_0
    :goto_0
    sget-object p1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 336
    sget-object p1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 337
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 342
    const-string v0, "MarketAttributes"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static methodToGetData(Landroid/content/Context;)V
    .locals 3

    .line 1884
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1885
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1886
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1887
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1888
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1889
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1890
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1891
    sget-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1892
    sget-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1893
    check-cast p0, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;

    .line 1894
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    sget-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;->GetData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1896
    sget-object p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->ctxt:Landroid/content/Context;

    check-cast p0, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;

    .line 1897
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    sget-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;->GetData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private resetListdata()V
    .locals 3

    const/4 v0, 0x0

    .line 2106
    iput v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForOperations:I

    .line 2107
    iput v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForDates:I

    .line 2108
    sget-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2109
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2110
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2111
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->addvillageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2112
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->addvillageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes_child:Ljava/util/List;

    .line 2114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->AlertlistAttributes:Ljava/util/List;

    .line 2115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->childValuelistAttributes:Ljava/util/List;

    .line 2116
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->btnfinish:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2117
    sget-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2118
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2119
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2120
    sget-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2121
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2122
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2123
    iput v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setCount:I

    return-void
.end method

.method private setData()V
    .locals 3

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mattributesnamesArr:Ljava/util/List;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArrIds:Ljava/util/List;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mImageviews:Ljava/util/List;

    .line 315
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->textActivityName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityId:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->loadAttributes(I)V

    .line 317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 318
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDay:I

    const/4 v1, 0x2

    .line 319
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mMonth:I

    const/4 v1, 0x1

    .line 320
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mYear:I

    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 1620
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1621
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1623
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1625
    const-string v1, "MarketAttributes"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1627
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 1325
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1326
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1327
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1328
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setListeners()V
    .locals 8

    .line 1904
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->parentAttributeId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityId:I

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getqueryForMIFirstchild(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getMIIsFirstChild(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->firstChild:I

    .line 1905
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->firstChild:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityId:I

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getqueryForMIDropdown(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->pairID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and (sequenceId is not null and sequenceId != \'\')  order by sequenceId ASC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getMIListdetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->dataList:Ljava/util/List;

    .line 1907
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->farmerId:Ljava/lang/String;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->parentAttributeId:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityAssignmentId:I

    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->transId:J

    invoke-virtual/range {v1 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->getChildValuesAttributeQueryUpdate(Ljava/lang/String;IIIJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->childValuelistAttributes:Ljava/util/List;

    .line 1908
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->farmerId:Ljava/lang/String;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->parentAttributeId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getSelectedAttributeQueryUpdate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->AlertlistAttributes:Ljava/util/List;

    .line 1909
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->childValuelistAttributes:Ljava/util/List;

    sput-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes_child:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1911
    const-string v1, "MarketAttributes"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1912
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1915
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 1916
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDay:I

    const/4 v1, 0x2

    .line 1917
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mMonth:I

    const/4 v1, 0x1

    .line 1918
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mYear:I

    .line 1919
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1920
    :goto_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1921
    iget v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->parentAttributeId:I

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->addvillageLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->dataList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/FieldData;

    invoke-direct {p0, v2, v3, v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Lcom/conceptglobal/pmc/model/FieldData;)V

    .line 1922
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->btnfinish:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1925
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1926
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1929
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->btnfinish:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 1577
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1578
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$11;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$11;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1584
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showDiscardAlert()V
    .locals 3

    .line 1297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1301
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardSelfAssignConfirmDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1303
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$4;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1311
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDiscardButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$5;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$5;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showRemarkSelectionAlert()V
    .locals 6

    .line 1356
    iget v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->ismba:I

    if-nez v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const-string v1, "SELECT itemType,itemValue FROM ConfigurableLookup where itemKey=\'FBARemarks\'"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const-string v1, "SELECT itemType,itemValue FROM ConfigurableLookup where itemKey=\'VBARemarks\'"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 1363
    :goto_0
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->remarkNames:[Ljava/lang/String;

    .line 1364
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->remarkids:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1366
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1367
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->remarkids:[Ljava/lang/String;

    aget-object v4, v0, v2

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 1368
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->remarkNames:[Ljava/lang/String;

    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1370
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1372
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_remarksForNotDoneSelfAssign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1373
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->remarkNames:[Ljava/lang/String;

    new-instance v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1413
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->d_remarks:Landroid/app/Dialog;

    .line 1414
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1415
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->d_remarks:Landroid/app/Dialog;

    new-instance v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$7;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 1632
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mFiledStr:Ljava/lang/String;

    .line 1633
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1635
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1637
    const-string v1, "MarketAttributes"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1639
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setDate(I)V

    return-void
.end method


# virtual methods
.method public GetData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;",
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;",
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;)V"
        }
    .end annotation

    .line 1024
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->resetListdata()V

    return-void
.end method

.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    .locals 40

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v0, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    .line 355
    iget v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForOperations:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForOperations:I

    .line 356
    iget v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForDates:I

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForDates:I

    .line 359
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 360
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 361
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v7, 0x4

    .line 362
    invoke-virtual {v8, v6, v6, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 363
    iget v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->layoutId:I

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 368
    new-instance v4, Landroid/widget/TextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, -0xbbbbbc

    .line 369
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v1

    if-ne v1, v9, :cond_0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v5, 0x0

    .line 378
    iput-object v5, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    .line 383
    new-instance v3, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$1;

    invoke-direct {v3, v10}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    .line 407
    new-instance v2, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 408
    const-string v1, "Dropdown"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v9, "Label"

    move-object/from16 v16, v9

    const-string v9, "NumberBox"

    move-object/from16 v17, v9

    const-string v9, "TextBox"

    move-object/from16 v18, v9

    const-string v9, "TextBoxND"

    move-object/from16 v19, v9

    const-string v9, "TextBoxN"

    move-object/from16 v20, v9

    const-string v9, "TextArea"

    move-object/from16 v21, v9

    const-string v9, "DatePicker"

    move-object/from16 v22, v9

    const-string v9, "Multiselect Dropdown"

    move-object/from16 v23, v9

    const-string v9, ""

    const v5, 0x7f080096

    const/high16 v7, 0x41400000    # 12.0f

    const/16 v6, 0x11

    if-eqz v1, :cond_a

    .line 409
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 410
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 411
    iget v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForOperations:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    .line 412
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 413
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 416
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x0

    .line 417
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 418
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f0800d7

    .line 419
    invoke-virtual {v3, v7, v7, v0, v7}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 420
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 424
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->cropId:Ljava/lang/String;

    .line 426
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/common/Queries;->getCropNameQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 431
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 434
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 437
    const-string v1, "MarketAttributes"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 444
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 447
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 445
    :cond_5
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 452
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 459
    :cond_6
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKey(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 453
    :cond_7
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 454
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKey(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 456
    :cond_8
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 463
    :goto_3
    new-instance v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v26

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v28

    const/16 v30, 0x0

    move-object v1, v0

    move-object v5, v2

    move-object/from16 v2, p0

    move-object/from16 p4, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    const/16 v24, 0x1

    move-wide/from16 v4, v26

    move-wide/from16 v6, v28

    move-object v14, v8

    move-object/from16 v8, p5

    move-object/from16 v33, v9

    move-object/from16 v13, v21

    move-object/from16 v15, v23

    const/4 v11, 0x1

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v22

    move-object/from16 v9, v30

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$1;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 465
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    iget v2, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->firstChild:I

    if-ne v0, v2, :cond_9

    .line 466
    invoke-direct {v10, v1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    const/4 v9, 0x0

    .line 467
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    :goto_4
    move/from16 v11, p3

    move-object v5, v1

    move-object/from16 v39, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v1, v17

    move-object/from16 v38, v18

    move-object/from16 v36, v21

    move-object/from16 v14, v33

    const/4 v13, 0x4

    goto/16 :goto_b

    :cond_a
    move-object/from16 v32, v2

    move-object/from16 v31, v4

    move-object/from16 v33, v9

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v8

    .line 469
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 471
    new-instance v8, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 472
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 473
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 474
    iget v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForOperations:I

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setId(I)V

    .line 475
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 476
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 477
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v7, 0x11

    .line 478
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800d7

    .line 479
    invoke-virtual {v8, v6, v6, v1, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 480
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_5

    .line 485
    :cond_b
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 488
    :cond_c
    :goto_5
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_11

    .line 492
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    .line 493
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->farmerId:Ljava/lang/String;

    iget v2, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityAssignmentId:I

    iget-wide v6, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->transId:J

    move-object/from16 v3, p5

    move-object v11, v5

    move-wide v5, v6

    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJ)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-virtual {v11, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 495
    :try_start_3
    const-string v1, "MarketAttributes"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 501
    :goto_7
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_f

    .line 503
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandSelected()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 504
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_d

    .line 507
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_d
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 516
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 519
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v11, v32

    .line 521
    :try_start_4
    invoke-virtual {v11, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_10
    move-object/from16 v11, v32

    .line 524
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_11
    move-object/from16 v11, v32

    .line 527
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 529
    :goto_8
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    iget v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->firstChild:I

    if-ne v0, v1, :cond_12

    .line 530
    invoke-direct {v10, v8}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 531
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v11, v32

    .line 534
    :goto_9
    const-string v1, "MarketAttributes"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_a
    move-object v5, v8

    move-object/from16 v32, v11

    move-object/from16 v39, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v1, v17

    move-object/from16 v38, v18

    move-object/from16 v36, v21

    move-object/from16 v14, v33

    const/4 v13, 0x4

    move/from16 v11, p3

    :goto_b
    move-object/from16 v21, v20

    goto/16 :goto_24

    :cond_13
    move-object/from16 v11, v32

    const/16 v8, 0x11

    .line 536
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "0"

    if-eqz v1, :cond_18

    .line 537
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    .line 538
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 539
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForDates:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 540
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 541
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 542
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setGravity(I)V

    .line 543
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 544
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 547
    :try_start_5
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->cropId:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->cropId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 548
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->farmerId:Ljava/lang/String;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->cropId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->dos:Ljava/lang/String;

    .line 550
    :cond_14
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->dos:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    .line 551
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->dos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 552
    :cond_15
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16

    .line 553
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 555
    :cond_16
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 557
    :goto_c
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    iget v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->firstChild:I

    if-ne v0, v1, :cond_17

    .line 558
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 559
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    .line 562
    const-string v1, "Attribute"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_d
    move-object v2, v9

    move-object/from16 v32, v11

    move-object/from16 v39, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v1, v17

    move-object/from16 v38, v18

    move-object/from16 v36, v21

    move-object/from16 v14, v33

    const/4 v13, 0x4

    move/from16 v11, p3

    goto/16 :goto_10

    :cond_18
    const/4 v4, 0x0

    .line 564
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 565
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    .line 566
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 567
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 568
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 569
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 570
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setGravity(I)V

    .line 571
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/text/InputFilter;

    aput-object v3, v2, v4

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xfa

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 572
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v7, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v22

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v24

    const/16 v26, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-wide/from16 v4, v22

    move-object/from16 v35, v6

    move-object/from16 v34, v7

    move-wide/from16 v6, v24

    move-object/from16 v22, v13

    const/16 v13, 0x11

    move-object/from16 v8, p5

    move-object v13, v9

    move-object/from16 v9, v26

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$1;)V

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 573
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v35

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v33

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 574
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_e

    .line 577
    :cond_19
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 575
    :cond_1a
    :goto_e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_1b
    move-object/from16 v8, v33

    .line 580
    :cond_1c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 582
    :goto_f
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    iget v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->firstChild:I

    if-ne v0, v1, :cond_1d

    .line 583
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 584
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1d
    move-object/from16 v32, v11

    move-object v2, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v1, v17

    move-object/from16 v38, v18

    move-object/from16 v36, v21

    move-object/from16 v39, v22

    const/4 v13, 0x4

    move/from16 v11, p3

    move-object v14, v8

    :goto_10
    move-object/from16 v21, v20

    goto/16 :goto_23

    :cond_1e
    move-object/from16 v22, v13

    move-object/from16 v8, v33

    move-object v13, v9

    move-object v9, v6

    move-object/from16 v6, v21

    .line 586
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 587
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v4, 0x0

    .line 588
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 589
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 590
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 591
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 592
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 593
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 594
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$NumericDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v10, v3}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$NumericDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;I)V

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 595
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v7, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v24

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v26

    const/16 v21, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-wide/from16 v4, v24

    move-object/from16 v36, v6

    move-object v13, v7

    move-wide/from16 v6, v26

    move-object/from16 v23, v14

    move-object v14, v8

    move-object/from16 v8, p5

    move-object/from16 v24, v15

    move-object v15, v9

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$1;)V

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 597
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 598
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_11

    .line 601
    :cond_1f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 599
    :cond_20
    :goto_11
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 604
    :cond_21
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 606
    :goto_12
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    iget v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->firstChild:I

    if-ne v0, v1, :cond_22

    .line 607
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 608
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v1

    move-object/from16 v32, v11

    move-object/from16 v1, v17

    move-object/from16 v38, v18

    move-object/from16 v21, v20

    move-object/from16 v39, v22

    goto :goto_13

    :cond_22
    move-object/from16 v32, v11

    move-object/from16 v1, v17

    move-object/from16 v38, v18

    move-object/from16 v21, v20

    move-object/from16 v39, v22

    const/4 v2, 0x0

    :goto_13
    const/4 v13, 0x4

    move/from16 v11, p3

    goto/16 :goto_23

    :cond_23
    move-object/from16 v36, v6

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v13, v20

    move-object v14, v8

    move-object v15, v9

    .line 610
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 611
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v9, 0x0

    .line 612
    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 613
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 614
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 615
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 616
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 617
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 618
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$DecimalDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {v1, v10, v3, v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;II)V

    aput-object v1, v2, v9

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 619
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v8, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v20, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v21, v13

    move-object v13, v8

    move-object/from16 v8, p5

    move-object/from16 v32, v11

    const/4 v11, 0x0

    move-object/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$1;)V

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 621
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 622
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_24

    goto :goto_14

    .line 625
    :cond_24
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 623
    :cond_25
    :goto_14
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 628
    :cond_26
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 630
    :goto_15
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    iget v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->firstChild:I

    if-ne v0, v1, :cond_27

    .line 631
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 632
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move/from16 v11, p3

    move-object v2, v1

    move-object/from16 v1, v17

    move-object/from16 v38, v18

    move-object/from16 v39, v22

    goto :goto_17

    :cond_27
    move/from16 v11, p3

    move-object/from16 v1, v17

    move-object/from16 v38, v18

    move-object/from16 v39, v22

    :goto_16
    const/4 v2, 0x0

    :goto_17
    const/4 v13, 0x4

    goto/16 :goto_23

    :cond_28
    move-object/from16 v32, v11

    move-object/from16 v21, v13

    move-object/from16 v13, v19

    const/4 v11, 0x0

    .line 634
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 635
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 636
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 637
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 638
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 639
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 640
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 641
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/text/InputFilter;

    aput-object v3, v2, v11

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x1

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 642
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v7

    const/16 v19, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v20, v3

    move-object v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-object/from16 v8, p5

    move-object v11, v9

    move-object/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$1;)V

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 643
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v0, 0x15

    move/from16 v11, p3

    move-object/from16 v9, v22

    if-eq v11, v0, :cond_29

    const/16 v0, 0x14

    if-ne v11, v0, :cond_2a

    .line 647
    :cond_29
    iget v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationFlag:I

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationFlag:I

    .line 650
    :cond_2a
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Budget (INR)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    .line 651
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 654
    :cond_2b
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 655
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 656
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_18

    .line 657
    :cond_2c
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 658
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 659
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 663
    :cond_2d
    :goto_18
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_19

    .line 666
    :cond_2e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v20, v2, v1

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v8, 0x4

    goto :goto_1a

    :cond_2f
    :goto_19
    const/4 v3, 0x1

    .line 664
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$DecimalDigitsInputFilter;

    const/4 v3, 0x6

    const/4 v8, 0x4

    invoke-direct {v2, v10, v8, v3}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 668
    :goto_1a
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 669
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    goto :goto_1b

    .line 672
    :cond_30
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 670
    :cond_31
    :goto_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 675
    :cond_32
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 677
    :goto_1c
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    iget v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->firstChild:I

    if-ne v0, v1, :cond_33

    .line 678
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 679
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v1

    move-object/from16 v39, v9

    move-object/from16 v19, v13

    move-object/from16 v1, v17

    move-object/from16 v38, v18

    goto/16 :goto_17

    :cond_33
    move-object/from16 v39, v9

    move-object/from16 v19, v13

    move-object/from16 v1, v17

    move-object/from16 v38, v18

    goto/16 :goto_16

    :cond_34
    move/from16 v11, p3

    move-object/from16 v6, v18

    move-object/from16 v9, v22

    const/4 v8, 0x4

    .line 681
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 682
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 683
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 684
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 685
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 686
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 687
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 688
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 689
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 690
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 691
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v7, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v18

    const/16 v20, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-wide/from16 v6, v18

    move-object/from16 v19, v13

    const/4 v13, 0x4

    move-object/from16 v8, p5

    move-object/from16 v39, v9

    move-object/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$1;)V

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 692
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 693
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_35

    goto :goto_1d

    .line 696
    :cond_35
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 694
    :cond_36
    :goto_1d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 699
    :cond_37
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 701
    :goto_1e
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    iget v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->firstChild:I

    if-ne v0, v1, :cond_38

    .line 702
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 703
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v1

    move-object/from16 v1, v17

    goto/16 :goto_23

    :cond_38
    move-object/from16 v1, v17

    :cond_39
    const/4 v2, 0x0

    goto/16 :goto_23

    :cond_3a
    move-object/from16 v38, v6

    move-object/from16 v39, v9

    move-object/from16 v19, v13

    move-object/from16 v1, v17

    const/4 v13, 0x4

    .line 706
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 707
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v3, 0x1

    .line 708
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 709
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 710
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 711
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 712
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 713
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 716
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 717
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_1f

    .line 720
    :cond_3b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 718
    :cond_3c
    :goto_1f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 723
    :cond_3d
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_20

    .line 726
    :cond_3e
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 724
    :cond_3f
    :goto_20
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setVisibility(I)V

    .line 729
    :goto_21
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    iget v2, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->firstChild:I

    if-ne v0, v2, :cond_39

    .line 730
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 731
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_23

    :cond_40
    const/4 v2, 0x0

    .line 734
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 735
    new-instance v5, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 736
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 737
    iget v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mForOperations:I

    invoke-virtual {v5, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setId(I)V

    const/4 v3, 0x1

    .line 739
    invoke-virtual {v5, v3}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setGravity(I)V

    .line 741
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "True"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 742
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "True"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 743
    invoke-virtual {v5, v3}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    goto :goto_22

    :cond_41
    const/4 v3, 0x0

    .line 745
    invoke-virtual {v5, v3}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    .line 748
    :cond_42
    :goto_22
    new-instance v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$2;

    invoke-direct {v0, v10}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    invoke-virtual {v5, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v9, v5

    move-object v5, v2

    goto :goto_24

    :cond_43
    :goto_23
    move-object v5, v2

    move-object v9, v5

    .line 756
    :goto_24
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 762
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 763
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 764
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v7, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->activityId:I

    invoke-virtual {v6, v11, v7}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v3

    const/16 v6, 0x64

    const/16 v7, 0xa

    const/4 v8, -0x2

    const/4 v11, -0x1

    if-eqz v3, :cond_44

    .line 765
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v15, 0x3ee66666    # 0.45f

    invoke-direct {v3, v11, v6, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v15, 0x11

    .line 766
    iput v15, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 767
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const v13, 0x3f19999a    # 0.6f

    invoke-direct {v15, v11, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 768
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct {v13, v11, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 769
    iput v7, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 770
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x28

    const v7, 0x3f666666    # 0.9f

    invoke-direct {v6, v11, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 771
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f000000    # 0.5f

    const/16 v8, 0x64

    invoke-direct {v6, v11, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v7, 0xa

    .line 772
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_25

    :cond_44
    const/16 v8, 0x64

    .line 775
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v6, 0x3ee66666    # 0.45f

    invoke-direct {v3, v11, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v6, 0x11

    .line 776
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 777
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, -0x2

    invoke-direct {v15, v11, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 778
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct {v13, v11, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v6, 0xa

    .line 779
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 780
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p3, v3

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v7, v11, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 781
    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 782
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v6, 0x3e4ccccd    # 0.2f

    const/4 v8, -0x2

    invoke-direct {v3, v11, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v3, p3

    move-object v6, v7

    :goto_25
    move-object/from16 v7, v31

    .line 784
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v8, v32

    .line 785
    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v2, v38

    .line 787
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 788
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_26
    move-object/from16 v32, v8

    move-object/from16 v33, v14

    move-object/from16 v13, v16

    move-object/from16 v11, v19

    move-object/from16 v8, v21

    move-object/from16 v14, v23

    move-object/from16 v4, v24

    :goto_27
    move-object/from16 v6, v36

    move-object/from16 v3, v39

    goto/16 :goto_2b

    .line 789
    :cond_45
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 790
    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_26

    :cond_46
    move-object/from16 v4, v24

    .line 791
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 792
    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v32, v8

    move-object/from16 v33, v14

    move-object/from16 v13, v16

    move-object/from16 v11, v19

    :goto_28
    move-object/from16 v8, v21

    move-object/from16 v14, v23

    goto :goto_27

    :cond_47
    move-object/from16 v11, v19

    .line 793
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 794
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v32, v8

    move-object/from16 v33, v14

    move-object/from16 v13, v16

    goto :goto_28

    :cond_48
    move-object/from16 v33, v14

    move-object/from16 v14, v23

    .line 795
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 796
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_29
    move-object/from16 v32, v8

    move-object/from16 v13, v16

    move-object/from16 v8, v21

    goto :goto_27

    .line 797
    :cond_49
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 798
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_29

    .line 799
    :cond_4a
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 800
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_29

    :cond_4b
    move-object/from16 v3, v39

    .line 801
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 802
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v32, v8

    move-object/from16 v13, v16

    move-object/from16 v8, v21

    move-object/from16 v6, v36

    goto :goto_2b

    :cond_4c
    move-object/from16 v6, v36

    .line 803
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 804
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v32, v8

    move-object/from16 v13, v16

    move-object/from16 v8, v21

    goto :goto_2b

    :cond_4d
    move-object/from16 v32, v8

    move-object/from16 v8, v21

    .line 805
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 806
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2a

    .line 807
    :cond_4e
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 808
    invoke-virtual {v9, v13}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4f
    :goto_2a
    move-object/from16 v13, v16

    .line 810
    :goto_2b
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 811
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 812
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_50
    :goto_2c
    move-object/from16 v16, v1

    const/4 v1, 0x1

    goto/16 :goto_2d

    .line 813
    :cond_51
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 814
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2c

    .line 815
    :cond_52
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 816
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2c

    .line 817
    :cond_53
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 818
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2c

    .line 819
    :cond_54
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 820
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2c

    .line 821
    :cond_55
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 822
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2c

    .line 823
    :cond_56
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 824
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2c

    .line 825
    :cond_57
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 826
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2c

    .line 827
    :cond_58
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 828
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2c

    .line 829
    :cond_59
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 830
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2c

    .line 831
    :cond_5a
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 832
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2c

    .line 834
    :goto_2d
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_5b

    .line 835
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v0

    if-ne v0, v1, :cond_5b

    .line 836
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 871
    :cond_5b
    iget v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationFlag:I

    if-ne v0, v1, :cond_5c

    .line 872
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v15, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    .line 873
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 876
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v15, v2

    move-object/from16 v18, v9

    move-object/from16 v2, v16

    goto/16 :goto_2e

    :cond_5c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5d

    .line 880
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 881
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 882
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 883
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 884
    iget v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->layoutId:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 886
    new-instance v1, Landroid/widget/TextView;

    iget-object v13, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v13, -0xbbbbbc

    .line 887
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v13, 0x4

    .line 889
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 890
    invoke-virtual {v0, v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    new-instance v1, Landroid/widget/Button;

    iget-object v13, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationBtn:Landroid/widget/Button;

    .line 892
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v13

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v15

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_getButton()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 893
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationBtn:Landroid/widget/Button;

    move-object v15, v2

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 894
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationBtn:Landroid/widget/Button;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 895
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationBtn:Landroid/widget/Button;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 896
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v2, 0x7f0800c6

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 897
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3ee66666    # 0.45f

    move-object/from16 v18, v9

    const/4 v9, -0x1

    const/4 v13, -0x2

    invoke-direct {v1, v9, v13, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v2, 0xa

    .line 898
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 899
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 900
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 901
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p6

    move-object/from16 v2, v16

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 903
    iput v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationFlag:I

    .line 904
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationBtn:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$3;

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2e

    :cond_5d
    move-object/from16 v1, p6

    move-object v15, v2

    move-object/from16 v18, v9

    move-object/from16 v2, v16

    .line 914
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 916
    :goto_2e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mattributesnamesArr:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArrIds:Ljava/util/List;

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 919
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    :cond_5e
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 922
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f

    .line 923
    :cond_5f
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 924
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f

    .line 925
    :cond_60
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 926
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f

    .line 927
    :cond_61
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 928
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f

    .line 929
    :cond_62
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 930
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 931
    :cond_63
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 932
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 933
    :cond_64
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 934
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 935
    :cond_65
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 936
    sget-object v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 937
    :cond_66
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 938
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v2, v33

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 940
    sget-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 941
    :cond_67
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 942
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 943
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 944
    sget-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_68
    :goto_2f
    iget v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->layoutId:I

    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getFragmentsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1695
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    const/4 v0, -0x1

    if-ne p1, p3, :cond_2

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1704
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1699
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->findCurrentLocation()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    if-ne p2, v0, :cond_4

    const/16 p2, 0x65

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 1716
    :cond_3
    new-instance p1, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    invoke-direct {p1, p2, p3}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CompressListener;)V

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->imageFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 232
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->requestWindowFeature(I)Z

    .line 233
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    .line 236
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    const p1, 0x7f0c0064

    .line 237
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setContentView(I)V

    .line 238
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 239
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->init()V

    .line 241
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getData()V

    .line 242
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setData()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1592
    :cond_0
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDay:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCropchangeListener(I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1647
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->farmerId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->dos:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1648
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mDatetext:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->dos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1653
    const-string v0, "MarketAttributes"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 1663
    :cond_0
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 1664
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1665
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 p1, 0x0

    .line 1667
    sput-boolean p1, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 1833
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Longitude"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1834
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1835
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1836
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1837
    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 1838
    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 1839
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1840
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1841
    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 1842
    check-cast v7, Landroid/widget/EditText;

    .line 1843
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1844
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1845
    :cond_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1846
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 1855
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->locationView:Landroid/view/View;

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1820
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1676
    const-string p2, "onRequestPermissionResult"

    const-string v0, "MarketAttributes"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 1678
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 1681
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1682
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 1684
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->findCurrentLocation()V

    goto :goto_0

    .line 1687
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1335
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 1336
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mImageviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1338
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v2, :cond_0

    .line 1340
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1343
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1344
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1348
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->resetListdata()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 953
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOutOfBounds(Landroid/view/MotionEvent;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onValidate(Z)V
    .locals 12

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 962
    :goto_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 963
    sget-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 982
    :try_start_0
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "0"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const-string v8, " - "

    const-string v9, " "

    if-ne v2, v7, :cond_4

    .line 983
    :try_start_1
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 985
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 987
    :cond_0
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 989
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    .line 991
    :cond_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v10

    cmp-long v2, v10, v5

    if-eqz v2, :cond_3

    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    cmp-long v10, v2, v5

    if-gez v10, :cond_3

    .line 993
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    if-eqz v7, :cond_8

    .line 996
    sget-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1001
    :cond_4
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 1002
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 1004
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    .line 1006
    :cond_5
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v10

    cmp-long v2, v10, v5

    if-eqz v2, :cond_7

    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    cmp-long v10, v2, v5

    if-gez v10, :cond_7

    .line 1008
    sget-object v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_8

    .line 1011
    sget-object v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1017
    const-string v2, "MarketAttributes"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method protected performFiltering(Ljava/util/List;Ljava/lang/String;I)Lcom/conceptglobal/pmc/model/AttributeModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/conceptglobal/pmc/model/AttributeModel;"
        }
    .end annotation

    .line 2083
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2084
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2085
    monitor-enter p0

    .line 2086
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2087
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2088
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    if-eqz p2, :cond_2

    .line 2089
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2091
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2093
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSequenceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2094
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 2095
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    goto :goto_0

    :cond_1
    return-object p1

    .line 2101
    :cond_2
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2087
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ")",
            "Lcom/conceptglobal/pmc/model/AttributeModel;"
        }
    .end annotation

    .line 1861
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1863
    monitor-enter p0

    .line 1864
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1865
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1868
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1871
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-object p3

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1865
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

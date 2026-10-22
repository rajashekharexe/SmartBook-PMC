.class public Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;
.super Landroidx/fragment/app/Fragment;
.source "AttributesDynamicTableFarmatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/CropChanger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$LocalBroadcastReceiver;,
        Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$SingleTapConfirm;,
        Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$CustomTextWatcher;,
        Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$NumericDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$DecimalDigitsInputFilter;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x1

.field private static final GET_CAM_IMG_FIRST:I = 0x65

.field private static final ISDONE:I

.field private static final ISNOTDONE:I


# instance fields
.field private ATTRIBUTEID_TAG:I

.field private AlertlistAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field private ControlPlot:Ljava/lang/String;

.field private Demo:Ljava/lang/String;

.field private ENTRYID_TAG:I

.field private SETID_TAG:I

.field private final TAG:Ljava/lang/String;

.field private activityAssignmentId:I

.field private activityId:I

.field private addvillageLayout:Landroid/widget/LinearLayout;

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

.field private attributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/EditText;",
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

.field private btnAdd:Landroid/widget/Button;

.field private childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

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

.field private datePos:I

.field private dateSelectedEdit:Landroid/widget/EditText;

.field datesListener:Landroid/view/View$OnClickListener;

.field private demoActivity:I

.field private dos:Ljava/lang/String;

.field private farmerId:Ljava/lang/String;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private globalView:Landroid/widget/ImageView;

.field private image1Path:Ljava/lang/String;

.field private imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

.field private imageFile:Ljava/io/File;

.field private imageView:Landroid/widget/ImageView;

.field private inDragMode:Z

.field private initViewX:I

.field private initViewY:I

.field private initX:I

.field private initY:I

.field private insertListAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field private isPlanned:I

.field private isSelfassign:I

.field private ismba:I

.field private layoutId:I

.field private listAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/conceptglobal/pmc/utils/CompressListener;

.field private locationBtn:Landroid/widget/Button;

.field private locationFlag:I

.field private locationInfo:Lcom/conceptglobal/pmc/model/LocationInfo;

.field private locationLayout:Landroid/widget/LinearLayout;

.field private locationService:Lcom/conceptglobal/pmc/utils/LocationService;

.field private locationView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDatetext:Landroid/widget/EditText;

.field private mDay:I

.field private mEntryArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryArrIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

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

.field private mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$LocalBroadcastReceiver;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

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

.field private newX:I

.field private newY:I

.field private objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

.field operationListener:Landroid/view/View$OnClickListener;

.field operationListenerMultiSelect:Landroid/view/View$OnClickListener;

.field private pairID:Ljava/lang/String;

.field private parentAttributeId:I

.field private queries:Lcom/conceptglobal/pmc/common/Queries;

.field private rootView:Landroid/view/View;

.field private screenHight:I

.field private screenWidth:I

.field private segmentId:I

.field private setCount:I

.field private setsData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/EditText;",
            ">;>;"
        }
    .end annotation
.end field

.field private transId:J

.field private updateDOS:Ljava/lang/String;

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

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 215
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 119
    const-string v0, "ChildAttributeFragment"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setCount:I

    .line 124
    const-string v1, "0"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->farmerId:Ljava/lang/String;

    .line 126
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationFlag:I

    .line 130
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->datePos:I

    .line 135
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mFiledStr:Ljava/lang/String;

    const/4 v1, -0x1

    .line 143
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mForOperations:I

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mForDates:I

    .line 144
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->layoutId:I

    const/4 v1, 0x0

    .line 155
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->childValuelistAttributes:Ljava/util/List;

    .line 160
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->brandsList:Ljava/util/List;

    .line 162
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->countVillage:I

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->villageDetails:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeMap:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setsData:Ljava/util/Map;

    const/4 v0, 0x1

    .line 198
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->ATTRIBUTEID_TAG:I

    const/4 v0, 0x2

    .line 199
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->SETID_TAG:I

    const/4 v0, 0x3

    .line 200
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->ENTRYID_TAG:I

    .line 211
    const-string v0, "Demo"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->Demo:Ljava/lang/String;

    .line 212
    const-string v0, "Control Plot"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->ControlPlot:Ljava/lang/String;

    .line 1745
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$6;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->operationListener:Landroid/view/View$OnClickListener;

    .line 1841
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$7;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$7;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 1961
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$8;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    .line 2116
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$10;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$10;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->datesListener:Landroid/view/View$OnClickListener;

    .line 2148
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$12;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->findCurrentLocation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)Ljava/util/HashMap;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)Ljava/util/Map;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setsData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)Ljava/util/List;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->listAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)Ljava/util/List;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArrIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)Ljava/util/List;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->ismba:I

    return p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->refreshSetViews(I)V

    return-void
.end method

.method static synthetic access$2002(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->dateSelectedEdit:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mYear:I

    return p0
.end method

.method static synthetic access$2202(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mYear:I

    return p1
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mMonth:I

    return p0
.end method

.method static synthetic access$2302(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mMonth:I

    return p1
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDay:I

    return p0
.end method

.method static synthetic access$2402(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDay:I

    return p1
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->updateDisplay()V

    return-void
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;I)Ljava/util/List;
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->filterAttributesByFilterAttribute(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)Landroid/content/Context;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityId:I

    return p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->assignmentID:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->farmerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationView:Landroid/view/View;

    return-object p1
.end method

.method private addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    .line 805
    new-instance v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 807
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeMap:Ljava/util/Map;

    .line 809
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 810
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noAttribsAvailToastSA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 814
    :cond_0
    new-instance v14, Landroid/widget/LinearLayout;

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 815
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0xc8

    const/4 v15, -0x2

    invoke-direct {v0, v2, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 816
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 817
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 818
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 821
    iget v3, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->layoutId:I

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 822
    iget v3, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setCount:I

    add-int/2addr v3, v0

    iput v3, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setCount:I

    .line 865
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 867
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 868
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v4, v1, v15, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 869
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 871
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x5

    .line 872
    invoke-virtual {v3, v1, v1, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 876
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 878
    const-string v4, "#"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    .line 879
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 880
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMinLines(I)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 881
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060124

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f0800e0

    .line 883
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/16 v8, 0x11

    .line 884
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 886
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 888
    iget v10, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setCount:I

    if-ne v10, v0, :cond_1

    .line 889
    iget-object v10, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->Demo:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 891
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->ControlPlot:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setCount:I

    sub-int/2addr v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    :goto_0
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 894
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setMinLines(I)V

    .line 895
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 896
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 897
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 898
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 899
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070177

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, v5, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 900
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    iget v4, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 903
    iget v4, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setCount:I

    if-ne v4, v0, :cond_2

    .line 904
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 905
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 907
    :cond_2
    iget v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityId:I

    const/16 v2, 0x5c4

    if-ne v0, v2, :cond_3

    const v0, 0x7f08015d

    .line 908
    invoke-virtual {v9, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 909
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$1;

    invoke-direct {v0, v12, v9}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;Landroid/widget/TextView;)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 928
    :cond_3
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 931
    :goto_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 934
    invoke-virtual {v14, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x0

    .line 937
    :goto_2
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_9

    .line 940
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-----objAttribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->childValuelistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, ""

    if-lez v0, :cond_4

    if-eqz p4, :cond_4

    .line 943
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->childValuelistAttributes:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v12, v0, v3, v4}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->performFiltering(Ljava/util/List;Ljava/lang/String;I)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v0

    .line 944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-----values"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 957
    :goto_3
    iget-object v1, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    iget-object v3, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 958
    iget-object v1, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    iget-object v3, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v13, :cond_7

    .line 962
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 963
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v4, v2

    goto :goto_5

    :cond_7
    :goto_4
    move-object v4, v0

    .line 967
    :goto_5
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    if-eqz v13, :cond_8

    .line 970
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    iget-object v5, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v8, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeMap:Ljava/util/Map;

    iget v9, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setCount:I

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v6, v14

    move/from16 v16, v11

    invoke-virtual/range {v0 .. v11}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;III)V

    goto :goto_6

    :cond_8
    move/from16 v16, v11

    .line 972
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    iget-object v5, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v8, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeMap:Ljava/util/Map;

    iget v9, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setCount:I

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v6, v14

    invoke-virtual/range {v0 .. v11}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;III)V

    :goto_6
    add-int/lit8 v11, v16, 0x1

    goto/16 :goto_2

    .line 977
    :cond_9
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setsData:Ljava/util/Map;

    iget v1, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v12, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeMap:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v1, p2

    .line 981
    invoke-virtual {v1, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private captureImage(ILjava/lang/String;)V
    .locals 4

    .line 2094
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 2095
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PMC"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".JPEG"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageFile:Ljava/io/File;

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 2097
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->image1Path:Ljava/lang/String;

    .line 2100
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2102
    const-string v0, "com.conceptglobal.pmcdeepakfertilizers.provider"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2106
    const-string v1, "output"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2108
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 2109
    const-string v2, ""

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v2, 0x3

    .line 2110
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2112
    :cond_1
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2113
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->startActivityForResult(Landroid/content/Intent;I)V

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

    .line 795
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 796
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 797
    new-instance v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v2, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private filterAttributesByFilterAttribute(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2269
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2270
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2271
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2272
    :cond_1
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2275
    const-string v1, "ChildAttributeFragment"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_2
    return-object v0
.end method

.method private findCurrentLocation()V
    .locals 5

    .line 1972
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1973
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1976
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$9;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$9;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)V

    const-string v3, "ChildAttributeFragment"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1993
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData(Landroid/os/Bundle;)V
    .locals 7

    .line 308
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->ismba:I

    .line 309
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->farmerId:Ljava/lang/String;

    .line 310
    const-string v0, "ISSELFASSIGN"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->isSelfassign:I

    .line 311
    const-string v0, "SEGMENTID"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->segmentId:I

    .line 312
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityId:I

    .line 313
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->isPlanned:I

    .line 314
    const-string v0, "ParentAttributeId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->parentAttributeId:I

    .line 315
    const-string v0, "ActivityAssignmentId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityAssignmentId:I

    .line 316
    const-string v0, "TRANSID"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->transId:J

    .line 317
    const-string v0, "Count"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->countVillage:I

    .line 318
    const-string v0, "pairId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    .line 319
    const-string v0, "AssignmentId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->assignmentID:I

    .line 320
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->parentAttributeId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityAssignmentId:I

    iget-wide v5, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->transId:J

    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getChildValuesAttributeQueryUpdate(Ljava/lang/String;IIIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->childValuelistAttributes:Ljava/util/List;

    .line 321
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->parentAttributeId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getSelectedAttributeQueryUpdate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    .line 323
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->childValuelistAttributes:Ljava/util/List;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->listAttributes:Ljava/util/List;

    .line 324
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    .line 325
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDay:I

    const/4 v0, 0x2

    .line 326
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mMonth:I

    const/4 v0, 0x1

    .line 327
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mYear:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 329
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0905f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    .line 286
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->btnAdd:Landroid/widget/Button;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    .line 288
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    .line 289
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 290
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArrIds:Ljava/util/List;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    .line 294
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$SingleTapConfirm;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$SingleTapConfirm;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->gestureDetector:Landroid/view/GestureDetector;

    .line 298
    new-instance v0, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    return-void
.end method

.method private refreshSetViews(I)V
    .locals 10

    .line 1006
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setsData:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1008
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setsData:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 1009
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mForOperations:I

    .line 1010
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mForDates:I

    .line 1011
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setCount:I

    .line 1012
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1013
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1014
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1015
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setsData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1016
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1017
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1019
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1020
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1021
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1024
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Dropdown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const-string v7, ""

    const v8, 0x7f100001

    if-eqz v6, :cond_1

    .line 1025
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1026
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1028
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1030
    :cond_1
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Multiselect Dropdown"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1031
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1032
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1034
    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1036
    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1040
    :cond_4
    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->parentAttributeId:I

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v5, v4, v0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V

    add-int/lit8 v2, v2, 0x1

    .line 1041
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .line 1044
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 2172
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->dateSelectedEdit:Landroid/widget/EditText;

    .line 2173
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2175
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2177
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2179
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2180
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 1738
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1739
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1740
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1741
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setListeners()V
    .locals 6

    .line 344
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->countVillage:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 348
    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->parentAttributeId:I

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1728
    const-string v0, "."

    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

    if-eqz v1, :cond_0

    .line 1729
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {v1, p3, v2, p1, p2}, Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;->addOrDeleteTab(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1732
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1733
    const-string p2, "ChildAttributeFragment"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 2129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2130
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

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$11;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$11;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showSuggesionsDialog()V
    .locals 12

    .line 2368
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2374
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0c012e

    .line 2375
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f0903a9

    .line 2376
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 2377
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 2378
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2380
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v3, 0x7f0903aa

    .line 2381
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 2382
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 2383
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2385
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2386
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getSuggesionsQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSuggesionsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v7

    const/4 v8, 0x0

    .line 2390
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 2391
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/SuggesionsModel;

    .line 2392
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/SuggesionsModel;->getAttributeId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2393
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/SuggesionsModel;->getSuggestedValueIds()Ljava/lang/String;

    move-result-object v7

    .line 2395
    :cond_0
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/SuggesionsModel;->getAttributeId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2396
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/SuggesionsModel;->getSuggestedValueIds()Ljava/lang/String;

    move-result-object v6

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2399
    :cond_2
    new-instance v8, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter;

    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v8, v9, v4}, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2400
    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2401
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 2402
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 2403
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v7, v6}, Lcom/conceptglobal/pmc/common/Queries;->getDosagesQry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDossagesList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2405
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2406
    new-instance v4, Lcom/conceptglobal/pmc/model/BrandSuggesionsModel;

    invoke-direct {v4}, Lcom/conceptglobal/pmc/model/BrandSuggesionsModel;-><init>()V

    .line 2407
    const-string v6, "CROP"

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/BrandSuggesionsModel;->setAttributeName(Ljava/lang/String;)V

    .line 2408
    const-string v6, "BRAND"

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/BrandSuggesionsModel;->setAttributeName2(Ljava/lang/String;)V

    .line 2409
    const-string v6, "DOSAGE Per Acre"

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/BrandSuggesionsModel;->setAttributeValue(Ljava/lang/String;)V

    .line 2410
    const-string v6, "DOSAGE Per Ltr"

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/BrandSuggesionsModel;->setAttributeValue2(Ljava/lang/String;)V

    .line 2411
    invoke-interface {v2, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2412
    new-instance v4, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v4, v6, v2}, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2413
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2414
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :cond_3
    const v2, 0x7f090078

    .line 2418
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2419
    new-instance v3, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$13;

    invoke-direct {v3, p0, v0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$13;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2427
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2428
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2429
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2430
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2432
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2433
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v2, -0x1

    .line 2434
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 2435
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2436
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2437
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 2185
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mFiledStr:Ljava/lang/String;

    .line 2186
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2188
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2190
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2192
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setDate(I)V

    return-void
.end method

.method private updateViews(Landroid/widget/ImageView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 2323
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public AddOperaion()V
    .locals 4

    .line 334
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->parentAttributeId:I

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V

    return-void
.end method

.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;III)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            "Landroid/widget/LinearLayout;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/EditText;",
            ">;III)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v0, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v9, p8

    move/from16 v8, p9

    .line 1083
    iget v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mForOperations:I

    const/4 v6, 0x1

    add-int/2addr v1, v6

    iput v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mForOperations:I

    .line 1084
    iget v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mForDates:I

    add-int/2addr v1, v6

    iput v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mForDates:I

    .line 1085
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1089
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1090
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v2, p10

    int-to-float v2, v2

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1091
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1093
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x5

    .line 1094
    invoke-virtual {v7, v4, v4, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1095
    iget v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->layoutId:I

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1100
    new-instance v3, Landroid/widget/TextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, -0xbbbbbc

    .line 1101
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1102
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    .line 1103
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1104
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinLines(I)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 1105
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1106
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v4, 0x7f060124

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f0800e0

    .line 1107
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/16 v4, 0x11

    .line 1108
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1111
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 1112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v5, 0x0

    .line 1119
    iput-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    .line 1123
    new-instance v5, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$2;

    invoke-direct {v5, v10}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)V

    .line 1147
    new-instance v6, Landroid/widget/EditText;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v6, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1171
    const-string v4, "Dropdown"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v9, "TextBoxND"

    const-string v2, "ChildAttributeFragment"

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

    const/high16 v1, 0x7f100000

    if-eqz v4, :cond_9

    .line 1172
    new-instance v4, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1173
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1174
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f100007

    invoke-virtual {v4, v1, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1175
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mForOperations:I

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setId(I)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 1176
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 v5, 0x2

    .line 1177
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1178
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMinLines(I)V

    const v0, 0x7f0800df

    .line 1179
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v0, 0x7f0800d8

    const/4 v1, 0x0

    .line 1180
    invoke-virtual {v4, v1, v1, v0, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1181
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1182
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v5, 0x11

    .line 1183
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1185
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    move-object/from16 v16, v7

    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    .line 1189
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

    .line 1190
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->cropId:Ljava/lang/String;

    .line 1191
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

    .line 1193
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1196
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1199
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1202
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1207
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

    .line 1210
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1208
    :cond_5
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1214
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

    .line 1223
    :cond_6
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKey(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100001

    .line 1224
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1225
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1215
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

    .line 1216
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKeyDefault(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100001

    .line 1217
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1218
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1220
    :cond_8
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1227
    :goto_3
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v24

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v26

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v28, v3

    move-object v3, v4

    move-object/from16 v29, v4

    move-wide/from16 v4, v24

    move-object/from16 v31, v6

    move-object/from16 v30, v16

    move-wide/from16 v6, v26

    move v14, v8

    move-object/from16 v8, p5

    move-object/from16 v13, v21

    move-object/from16 v15, v22

    move-object/from16 v11, v23

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$1;)V

    move-object/from16 v1, v29

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move/from16 v2, p3

    move-object v4, v1

    move-object v3, v13

    move v5, v14

    move-object/from16 v32, v20

    goto/16 :goto_d

    :cond_9
    move-object/from16 v28, v3

    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move v14, v8

    move-object/from16 v13, v21

    move-object/from16 v15, v22

    move-object/from16 v11, v23

    .line 1229
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1231
    new-instance v9, Landroid/widget/EditText;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v9, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    .line 1232
    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1233
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1234
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f100007

    invoke-virtual {v9, v3, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1235
    iget v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mForOperations:I

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setId(I)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 1236
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 v7, 0x2

    .line 1237
    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1238
    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setMinLines(I)V

    const v1, 0x7f0800df

    .line 1239
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1240
    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v5, 0x11

    .line 1241
    invoke-virtual {v9, v5}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800d8

    .line 1242
    invoke-virtual {v9, v8, v8, v1, v8}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1244
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1246
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    .line 1249
    :cond_a
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1252
    :cond_b
    :goto_4
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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    if-eqz v0, :cond_11

    if-eqz p7, :cond_c

    .line 1257
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    .line 1258
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->farmerId:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    iget v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityAssignmentId:I

    move-object/from16 p4, v6

    iget-wide v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->transId:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v2

    move-object v2, v3

    move-object/from16 v3, p5

    move-object/from16 v7, p4

    move-object/from16 v23, v11

    const/16 v11, 0x11

    :try_start_3
    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry_byIds(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJ)Ljava/lang/String;

    move-result-object v0

    .line 1257
    invoke-virtual {v7, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->brandsList:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v8, v2

    move-object/from16 v23, v11

    const/16 v11, 0x11

    .line 1260
    :goto_5
    :try_start_4
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_6
    move-object/from16 v21, v13

    const/4 v13, 0x2

    goto :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_a

    :cond_c
    move-object v8, v2

    move-object/from16 v23, v11

    const/16 v11, 0x11

    .line 1264
    :try_start_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    .line 1265
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->farmerId:Ljava/lang/String;

    iget v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityAssignmentId:I

    iget-wide v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->transId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v3, p5

    move-object v14, v7

    move-object/from16 v21, v13

    const/4 v13, 0x2

    move-object v7, v11

    :try_start_6
    invoke-virtual/range {v0 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry_Pairid(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1264
    invoke-virtual {v14, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->brandsList:Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v21, v13

    const/4 v13, 0x2

    .line 1267
    :goto_7
    :try_start_7
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1272
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1275
    :goto_9
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_f

    .line 1277
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandSelected()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1278
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->brandsList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->brandsList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_d

    .line 1281
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    :cond_d
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1290
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1293
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v9, v1, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_c

    .line 1298
    :cond_10
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_11
    move-object v8, v2

    move-object/from16 v23, v11

    move-object/from16 v21, v13

    const/4 v13, 0x2

    .line 1301
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v8, v2

    move-object/from16 v23, v11

    :goto_a
    move-object/from16 v21, v13

    const/4 v13, 0x2

    .line 1305
    :goto_b
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1307
    :goto_c
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/4 v11, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v9

    const/4 v14, 0x0

    move-object/from16 v8, p5

    move-object v14, v9

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$1;)V

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move/from16 v2, p3

    move/from16 v5, p9

    move-object v4, v14

    move-object/from16 v32, v20

    move-object/from16 v3, v21

    :goto_d
    const/16 v1, 0xa

    goto/16 :goto_1d

    :cond_12
    move-object/from16 v23, v11

    move-object/from16 v21, v13

    const/4 v13, 0x2

    .line 1309
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1310
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    .line 1311
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1312
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1313
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mForDates:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 1314
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1315
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1316
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1317
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1318
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1319
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    const v1, 0x7f0800df

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1320
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1321
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    move/from16 v2, p3

    move/from16 v5, p9

    move-object/from16 v32, v20

    :goto_e
    move-object/from16 v3, v21

    :goto_f
    const/16 v1, 0xa

    goto/16 :goto_1c

    :cond_13
    move-object/from16 v11, v21

    const/4 v2, 0x0

    .line 1336
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v14, "0"

    if-eqz v3, :cond_17

    .line 1337
    new-instance v0, Landroid/widget/EditText;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    .line 1338
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1339
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1340
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1341
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1342
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1343
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1344
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800df

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1345
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1346
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v13, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v8, 0x1

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1348
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1349
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_10

    .line 1352
    :cond_14
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 1350
    :cond_15
    :goto_10
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 1355
    :cond_16
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    move/from16 v2, p3

    move/from16 v5, p9

    move-object v3, v11

    move-object/from16 v32, v20

    goto/16 :goto_f

    :cond_17
    move-object/from16 v6, v20

    const/4 v8, 0x1

    .line 1357
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1358
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    .line 1359
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1360
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1361
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1362
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1363
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1364
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1365
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800df

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1366
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1368
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1370
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    new-instance v7, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v16

    const/16 v18, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v32, v6

    move-object v13, v7

    move-wide/from16 v6, v16

    move-object/from16 v21, v11

    const/4 v11, 0x1

    move-object/from16 v8, p5

    move-object v11, v9

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$1;)V

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1372
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_12

    .line 1375
    :cond_18
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    :cond_19
    :goto_12
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1378
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_13

    .line 1381
    :cond_1a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 1379
    :cond_1b
    :goto_13
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 1384
    :cond_1c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    :cond_1d
    move-object/from16 v32, v6

    move-object/from16 v21, v11

    move-object/from16 v13, v19

    move-object v11, v9

    .line 1386
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1387
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    .line 1388
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1389
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1390
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1391
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1392
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1393
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1394
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800df

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1395
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1397
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1399
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v16, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v8, p5

    move-object/from16 v19, v13

    move-object v13, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$1;)V

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1401
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1402
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_14

    .line 1405
    :cond_1e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1403
    :cond_1f
    :goto_14
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1408
    :cond_20
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    move/from16 v2, p3

    move/from16 v5, p9

    goto/16 :goto_e

    :cond_21
    move-object/from16 v19, v13

    .line 1410
    const-string v2, "TextBox"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1411
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    .line 1412
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1413
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1414
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1415
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1416
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1417
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1418
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const v2, 0x7f0800df

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1419
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 1420
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    new-array v2, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v5, v2, v1

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1421
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x20001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v0, 0x15

    move/from16 v2, p3

    move-object/from16 v3, v21

    if-eq v2, v0, :cond_22

    const/16 v0, 0x14

    if-ne v2, v0, :cond_23

    .line 1424
    :cond_22
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationFlag:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationFlag:I

    .line 1427
    :cond_23
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_16

    .line 1430
    :cond_24
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v4, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v5, v4, v1

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x1e

    invoke-direct {v1, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_17

    :cond_25
    :goto_16
    const/4 v5, 0x1

    .line 1428
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v4, Lcom/conceptglobal/pmc/utils/UtilDeclarations$DecimalDigitsInputFilter;

    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-direct {v4, v5, v6}, Lcom/conceptglobal/pmc/utils/UtilDeclarations$DecimalDigitsInputFilter;-><init>(II)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1433
    :goto_17
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1434
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_26

    goto :goto_18

    .line 1437
    :cond_26
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b

    .line 1435
    :cond_27
    :goto_18
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b

    .line 1440
    :cond_28
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b

    :cond_29
    move/from16 v2, p3

    move-object/from16 v3, v21

    .line 1442
    const-string v4, "NumberBox"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1443
    new-instance v0, Landroid/widget/EditText;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v4, 0x0

    .line 1444
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1445
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1446
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1447
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1448
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1449
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v4, 0x7f100007

    invoke-virtual {v0, v4, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1450
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800df

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1451
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1453
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1454
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v4, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v5

    invoke-direct {v1, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1455
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1456
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_19

    .line 1459
    :cond_2a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b

    .line 1457
    :cond_2b
    :goto_19
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b

    .line 1462
    :cond_2c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b

    .line 1464
    :cond_2d
    const-string v4, "Label"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1465
    new-instance v4, Landroid/widget/EditText;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v5, 0x1

    .line 1466
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1467
    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1468
    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1469
    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1470
    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1471
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f100007

    invoke-virtual {v1, v5, v4}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1472
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const v4, 0x7f0800e0

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1473
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 1474
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1477
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    const-string v4, "NA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_1a

    .line 1480
    :cond_2e
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b

    .line 1478
    :cond_2f
    :goto_1a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1482
    :cond_30
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1483
    new-instance v0, Landroid/widget/ImageView;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    const v4, 0x7f080090

    .line 1485
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1486
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "###"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1487
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1488
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v4, 0x7f100007

    invoke-virtual {v0, v4, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1489
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0xa

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v4, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1491
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_31

    .line 1493
    new-instance v0, Ljava/io/File;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1496
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1497
    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1500
    :cond_31
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mImageviews:Ljava/util/List;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1501
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    new-instance v4, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$3;

    invoke-direct {v4, v10, v2}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$3;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1c

    :cond_32
    :goto_1b
    move/from16 v5, p9

    goto/16 :goto_f

    :goto_1c
    const/4 v4, 0x0

    .line 1517
    :goto_1d
    new-instance v0, Landroid/widget/TextView;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1526
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1527
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1528
    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v9, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v11, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityId:I

    invoke-virtual {v9, v2, v11}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v7

    const/high16 v11, 0x3f000000    # 0.5f

    const/16 v13, 0x64

    const/4 v14, -0x1

    if-eqz v7, :cond_33

    .line 1529
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const v9, 0x3ee66666    # 0.45f

    invoke-direct {v7, v14, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0x11

    .line 1530
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1531
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const v13, 0x3f19999a    # 0.6f

    const/4 v1, -0x2

    invoke-direct {v9, v14, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1532
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v14, v1, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v11, 0xa

    .line 1533
    iput v11, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1534
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const v11, 0x3f666666    # 0.9f

    invoke-direct {v13, v14, v1, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v11, 0x30

    .line 1535
    iput v11, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1536
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p7, v7

    const/high16 v1, 0x3f000000    # 0.5f

    const/16 v7, 0x64

    invoke-direct {v11, v14, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0xa

    .line 1537
    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1538
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v11, -0x2

    invoke-direct {v1, v14, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1539
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 p10, v1

    const v1, 0x7f070177

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-direct {v7, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1540
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v14, v1, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 1541
    iput v1, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v7, p4

    move-object/from16 v1, p10

    move-object/from16 v17, v9

    move-object/from16 v11, v28

    move-object/from16 v9, p7

    goto :goto_1e

    :cond_33
    const/4 v11, -0x2

    .line 1544
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3ee66666    # 0.45f

    const/16 v9, 0x64

    const/4 v13, -0x1

    invoke-direct {v7, v13, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0x11

    .line 1545
    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1546
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-direct {v1, v13, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1547
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v13, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1549
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const v14, 0x3ecccccd    # 0.4f

    const/16 v11, 0x64

    invoke-direct {v9, v13, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1551
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const v11, 0x3e4ccccd    # 0.2f

    const/4 v14, -0x2

    invoke-direct {v9, v13, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1552
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p7, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v11, v13, v14, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1553
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 p10, v7

    const v7, 0x7f070177

    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-direct {v1, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1554
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v13, v1, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v7, p4

    move-object/from16 v17, p7

    move-object v1, v11

    move-object v14, v13

    move-object/from16 v11, v28

    move-object v13, v9

    move-object/from16 v9, p10

    .line 1556
    :goto_1e
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v18, v13

    move-object/from16 v13, v31

    .line 1557
    invoke-virtual {v13, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1558
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1559
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1560
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1f
    move-object/from16 v8, v19

    move-object/from16 v6, v23

    :goto_20
    move-object/from16 v1, v32

    :cond_34
    :goto_21
    const/4 v7, 0x1

    goto/16 :goto_23

    .line 1561
    :cond_35
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    if-nez p11, :cond_36

    .line 1562
    invoke-virtual {v4, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1f

    .line 1563
    :cond_36
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1564
    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1f

    :cond_37
    move-object/from16 v6, v23

    .line 1565
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1566
    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_22
    move-object/from16 v8, v19

    goto :goto_20

    .line 1567
    :cond_38
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1568
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    .line 1569
    :cond_39
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1570
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    .line 1571
    :cond_3a
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1572
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    .line 1573
    :cond_3b
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1574
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    .line 1575
    :cond_3c
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1576
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    :cond_3d
    move-object/from16 v1, v32

    .line 1577
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1578
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v8, v19

    goto :goto_21

    :cond_3e
    move-object/from16 v8, v19

    .line 1579
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1580
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_21

    :goto_23
    if-ne v5, v7, :cond_3f

    move-object/from16 v5, v30

    .line 1583
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_24

    :cond_3f
    move-object/from16 v5, v30

    .line 1585
    :goto_24
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1586
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_40
    :goto_25
    const/4 v7, 0x1

    goto/16 :goto_26

    .line 1587
    :cond_41
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1588
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_25

    .line 1589
    :cond_42
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1590
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_25

    .line 1591
    :cond_43
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1592
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_25

    .line 1593
    :cond_44
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1594
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_25

    .line 1595
    :cond_45
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1596
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_25

    .line 1597
    :cond_46
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1598
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_25

    .line 1599
    :cond_47
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1600
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_25

    .line 1601
    :cond_48
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1602
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_25

    .line 1603
    :cond_49
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1604
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_25

    .line 1606
    :goto_26
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_4a

    .line 1607
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v0

    if-ne v0, v7, :cond_4a

    if-lez p11, :cond_4a

    .line 1608
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1611
    :cond_4a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v9, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityId:I

    invoke-virtual {v7, v2, v9}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4b

    .line 1612
    new-instance v0, Landroid/widget/Button;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1614
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1615
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0801d2

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v9, v18

    .line 1616
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1617
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1619
    new-instance v7, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$4;

    invoke-direct {v7, v10}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$4;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1640
    :cond_4b
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationFlag:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_4c

    .line 1641
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v9, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationLayout:Landroid/widget/LinearLayout;

    .line 1642
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1645
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v7, v1

    goto/16 :goto_27

    :cond_4c
    const/4 v7, 0x2

    if-ne v0, v7, :cond_4d

    .line 1649
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1650
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 1651
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 1652
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1653
    iget v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->layoutId:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1655
    new-instance v5, Landroid/widget/TextView;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v7, -0xbbbbbc

    .line 1656
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v7, 0x4

    .line 1658
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v9, v17

    .line 1659
    invoke-virtual {v0, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1660
    new-instance v5, Landroid/widget/Button;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    .line 1661
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_getButton()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1662
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    move-object v7, v1

    move-object/from16 v1, p1

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1663
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setGravity(I)V

    .line 1664
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1665
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0800c6

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1666
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v9, 0x3ee66666    # 0.45f

    const/4 v11, -0x2

    invoke-direct {v1, v5, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0xa

    .line 1667
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1668
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1669
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1670
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p6

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 1672
    iput v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationFlag:I

    .line 1673
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$5;

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$5;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_27

    :cond_4d
    move-object v7, v1

    move-object/from16 v1, p6

    .line 1683
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1684
    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1687
    :goto_27
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1688
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1689
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1690
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    move-object/from16 v5, p8

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_28

    :cond_4e
    move-object/from16 v5, p8

    .line 1691
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1692
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1693
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_28

    .line 1694
    :cond_4f
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1695
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1696
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_28

    .line 1697
    :cond_50
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1698
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1699
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_28

    .line 1700
    :cond_51
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1701
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1702
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_28

    .line 1703
    :cond_52
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1704
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1705
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 1706
    :cond_53
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1707
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1708
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 1709
    :cond_54
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1710
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1711
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 1712
    :cond_55
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1713
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1714
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 1715
    :cond_56
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1716
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1717
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1718
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1719
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    :cond_57
    :goto_28
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->layoutId:I

    return-void
.end method

.method public isDataValid()Z
    .locals 21

    move-object/from16 v1, p0

    .line 474
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 476
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setsData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 477
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 478
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 480
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 482
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 484
    new-instance v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v8, v9}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 489
    :try_start_0
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v10, "0"

    const-string v14, "TextBoxN"

    const-string v15, " - "

    const-string v11, "TextBoxND"

    const-string v12, " "

    const-string v13, ""

    const/16 v18, 0x0

    if-ne v9, v3, :cond_6

    .line 490
    :try_start_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v9, :cond_0

    .line 493
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_9

    .line 495
    :cond_0
    :try_start_3
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ge v9, v3, :cond_1

    .line 498
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    .line 500
    :goto_2
    :try_start_5
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v9, :cond_2

    .line 502
    :try_start_6
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 506
    :catch_1
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 509
    :cond_2
    :goto_3
    :try_start_8
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 510
    :cond_3
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v19

    const-wide/16 v16, 0x0

    cmp-long v9, v19, v16

    if-eqz v9, :cond_5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v16
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    cmp-long v11, v9, v16

    if-gez v11, :cond_5

    .line 513
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :cond_5
    if-eqz v3, :cond_d

    const/4 v9, 0x0

    .line 518
    :try_start_a
    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 524
    :cond_6
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    .line 525
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    if-ge v3, v9, :cond_7

    .line 528
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    const/4 v3, 0x1

    .line 530
    :goto_4
    :try_start_c
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    if-eqz v9, :cond_8

    .line 532
    :try_start_d
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_5

    .line 536
    :catch_2
    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 539
    :cond_8
    :goto_5
    :try_start_f
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 540
    :cond_9
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v19

    const-wide/16 v16, 0x0

    cmp-long v9, v19, v16

    if-eqz v9, :cond_b

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_a
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v16
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    cmp-long v11, v9, v16

    if-gez v11, :cond_b

    .line 543
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :cond_b
    if-eqz v3, :cond_d

    const/4 v9, 0x0

    .line 547
    :try_start_11
    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    const/4 v3, 0x1

    :cond_d
    :goto_6
    if-eqz v3, :cond_13

    .line 562
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    const-string v9, "DropDown"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    const v9, 0x7f100001

    const-string v10, "."

    if-eqz v3, :cond_f

    .line 563
    :try_start_12
    invoke-virtual {v0, v9}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 564
    invoke-virtual {v0, v9}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_7

    .line 566
    :cond_e
    invoke-virtual {v8, v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 567
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 569
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 570
    :cond_f
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    const-string v11, "Multiselect Dropdown"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 572
    invoke-virtual {v0, v9}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 573
    invoke-virtual {v0, v9}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 574
    array-length v3, v0

    if-lez v3, :cond_10

    .line 575
    array-length v3, v0

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v3, :cond_13

    aget-object v11, v0, v9

    .line 576
    new-instance v12, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v12, v13}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 577
    invoke-virtual {v12, v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 578
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 579
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 580
    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 583
    :cond_10
    invoke-virtual {v8, v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 586
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 589
    :cond_11
    invoke-virtual {v8, v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 592
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 596
    :cond_12
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 599
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    .line 603
    :goto_9
    const-string v3, "ChildAttributeFragment"

    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_a
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_14
    move v0, v6

    goto/16 :goto_0

    :cond_15
    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 281
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 220
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mActivity:Landroid/app/Activity;

    .line 223
    :try_start_0
    check-cast p1, Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    const-string v0, "android.intent.action.GPSTurnedOnResult"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$LocalBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$LocalBroadcastReceiver;

    .line 230
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2143
    :cond_0
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDay:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 236
    iget-object p3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 237
    iput p3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setCount:I

    const v0, 0x7f0c006f

    .line 238
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->rootView:Landroid/view/View;

    .line 239
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->init()V

    .line 240
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 241
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getData(Landroid/os/Bundle;)V

    .line 242
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setListeners()V

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onCropchangeListener(I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1946
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->farmerId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->dos:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1947
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 1948
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->dos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1951
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 255
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 256
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setsData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 257
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 2061
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Longitude"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2062
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2063
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2064
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2065
    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 2066
    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 2067
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 2068
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2069
    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 2070
    check-cast v7, Landroid/widget/EditText;

    .line 2071
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2072
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

    .line 2073
    :cond_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2074
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

    .line 2085
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->locationView:Landroid/view/View;

    return-void
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 303
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 268
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 262
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 249
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method

.method public onValidate(Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 722
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_9

    move-object/from16 v6, p1

    .line 723
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 745
    :try_start_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, "0"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, " - "

    const-string v13, " "

    if-ne v7, v2, :cond_4

    .line 746
    :try_start_1
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v7, :cond_0

    .line 749
    :try_start_2
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/4 v5, 0x0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 751
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-ge v7, v14, :cond_1

    .line 754
    :try_start_4
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v14

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v15

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    const/4 v7, 0x1

    .line 756
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-eqz v16, :cond_3

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v10, v8

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    cmp-long v8, v10, v14

    if-gez v8, :cond_3

    .line 759
    :try_start_6
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    :cond_3
    if-eqz v7, :cond_8

    .line 762
    :try_start_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 767
    :cond_4
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    .line 768
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    if-ge v7, v14, :cond_5

    .line 771
    :try_start_8
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v14

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v15

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    const/4 v7, 0x1

    .line 773
    :goto_3
    :try_start_9
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-eqz v16, :cond_7

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_6
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v10, v8

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    cmp-long v8, v10, v14

    if-gez v8, :cond_7

    .line 776
    :try_start_a
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    :cond_7
    if-eqz v7, :cond_8

    .line 779
    :try_start_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 785
    :goto_4
    const-string v7, "ChildAttributeFragment"

    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return v5
.end method

.method protected performFiltering(Ljava/util/List;Ljava/lang/String;I)Lcom/conceptglobal/pmc/model/AttributeModel;
    .locals 4
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

    .line 1056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    monitor-enter p0

    .line 1059
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1060
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    if-eqz p2, :cond_3

    .line 1062
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1064
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1066
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSequenceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1067
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    if-ne v2, p3, :cond_1

    .line 1068
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 1069
    :cond_1
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-----sequence"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object p1

    .line 1077
    :cond_3
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1060
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public prepareDataDraft()V
    .locals 12

    .line 631
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 633
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setsData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 634
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 635
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 637
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 638
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 639
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 641
    new-instance v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v5, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 654
    :try_start_0
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DropDown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ""

    const v8, 0x7f100001

    const-string v9, "."

    if-eqz v6, :cond_3

    .line 655
    :try_start_1
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 656
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_1

    .line 658
    :cond_2
    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 659
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 661
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 662
    :cond_3
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    const-string v10, "Multiselect Dropdown"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 664
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 665
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 666
    array-length v6, v3

    if-lez v6, :cond_4

    .line 667
    array-length v6, v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_1

    aget-object v8, v3, v7

    .line 668
    new-instance v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v11, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v10, v11}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 669
    invoke-virtual {v10, v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 670
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 671
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 672
    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 675
    :cond_4
    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 678
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 681
    :cond_5
    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 684
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 688
    :cond_6
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 691
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .line 694
    const-string v4, "ChildAttributeFragment"

    invoke-static {v4, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public showSuggesions()V
    .locals 0

    .line 339
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->showSuggesionsDialog()V

    return-void
.end method

.method public testMethod(I)V
    .locals 12

    if-nez p1, :cond_0

    .line 459
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityAssignmentId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->parentAttributeId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsChildActivityFromTable(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 460
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityId:I

    iget-wide v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->transId:J

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->parentAttributeId:I

    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsChildActivityFromTableSA(Ljava/lang/String;IJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->farmerId:Ljava/lang/String;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->isPlanned:I

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->assignmentID:I

    iget v8, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->segmentId:I

    iget-wide v9, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->transId:J

    iget v11, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->activityAssignmentId:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v11}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsWithSequenceId(Ljava/util/List;Ljava/lang/String;IIIIIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 463
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

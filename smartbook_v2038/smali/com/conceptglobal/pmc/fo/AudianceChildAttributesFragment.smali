.class public Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;
.super Landroidx/fragment/app/Fragment;
.source "AudianceChildAttributesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/CropChanger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$LocalBroadcastReceiver;,
        Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$SingleTapConfirm;,
        Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$CustomTextWatcher;,
        Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$NumericDigitsInputFilter;
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

.field private btnAdd:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

.field private btnfinish:Landroid/widget/Button;

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

.field private locationInfo:Lcom/conceptglobal/pmc/model/LocationInfoModel;

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

.field private mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$LocalBroadcastReceiver;

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

.field private selectedFarmers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation
.end field

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

    .line 199
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 103
    const-string v0, "ChildAttributeFragment"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    .line 109
    const-string v1, "0"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->farmerId:Ljava/lang/String;

    .line 111
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationFlag:I

    .line 115
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->datePos:I

    .line 120
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mFiledStr:Ljava/lang/String;

    const/4 v1, -0x1

    .line 128
    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mForOperations:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mForDates:I

    .line 129
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->layoutId:I

    const/4 v1, 0x0

    .line 140
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->childValuelistAttributes:Ljava/util/List;

    .line 145
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;

    .line 147
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->countVillage:I

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->villageDetails:Ljava/util/Map;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeMap:Ljava/util/Map;

    .line 152
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setsData:Ljava/util/Map;

    const/4 v0, 0x1

    .line 182
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->ATTRIBUTEID_TAG:I

    const/4 v0, 0x2

    .line 183
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->SETID_TAG:I

    const/4 v0, 0x3

    .line 184
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->ENTRYID_TAG:I

    .line 1666
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->operationListener:Landroid/view/View$OnClickListener;

    .line 1762
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 1882
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$10;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$10;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    .line 2041
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$12;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->datesListener:Landroid/view/View$OnClickListener;

    .line 2073
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$14;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$14;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->assignmentID:I

    return p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->farmerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->findCurrentLocation()V

    return-void
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setsData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/List;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->listAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/List;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArrIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->parentAttributeId:I

    return p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/List;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->AlertlistAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->ismba:I

    return p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->dateSelectedEdit:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mYear:I

    return p0
.end method

.method static synthetic access$2602(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mYear:I

    return p1
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mMonth:I

    return p0
.end method

.method static synthetic access$2702(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mMonth:I

    return p1
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDay:I

    return p0
.end method

.method static synthetic access$2802(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDay:I

    return p1
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->updateDisplay()V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)Ljava/util/List;
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->filterAttributesByFilterAttribute(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/view/GestureDetector;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->inDragMode:Z

    return p0
.end method

.method static synthetic access$3202(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->inDragMode:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->initX:I

    return p0
.end method

.method static synthetic access$3302(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->initX:I

    return p1
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->initY:I

    return p0
.end method

.method static synthetic access$3402(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->initY:I

    return p1
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->initViewX:I

    return p0
.end method

.method static synthetic access$3502(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->initViewX:I

    return p1
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->initViewY:I

    return p0
.end method

.method static synthetic access$3602(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->initViewY:I

    return p1
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->newX:I

    return p0
.end method

.method static synthetic access$3702(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->newX:I

    return p1
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->newY:I

    return p0
.end method

.method static synthetic access$3802(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->newY:I

    return p1
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->screenWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->selectedFarmers:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->screenHight:I

    return p0
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->globalView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Landroid/widget/ImageView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->updateViews(Landroid/widget/ImageView;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;ILandroid/widget/LinearLayout;Ljava/util/Map;ZLjava/util/HashMap;)V
    .locals 0

    .line 101
    invoke-direct/range {p0 .. p5}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;ZLjava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->refreshSetViews(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/content/Context;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityId:I

    return p0
.end method

.method private addAudianceFarmerDetails(Ljava/util/List;Ljava/lang/String;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    .line 449
    const-string v2, "\'"

    const-string v3, ""

    const-string v4, "1"

    const-string v5, "false"

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/conceptglobal/pmc/common/Queries;->getActivityShortCode(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 450
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateAudianceFarmer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 451
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    .line 452
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    move-object/from16 v10, p1

    .line 453
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 454
    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 455
    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 457
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 458
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 464
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 465
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 466
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 467
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 468
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 469
    new-instance v14, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-direct {v14}, Lcom/conceptglobal/pmc/model/FarmerMaster;-><init>()V

    .line 470
    const-string v15, "true"

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setisNew(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v14, v5}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setServerupdatedstatus(Ljava/lang/String;)V

    .line 472
    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setPdaid(Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 474
    invoke-virtual {v14, v8}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setStatus(I)V

    .line 475
    invoke-virtual {v14, v4}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setTypeofFarmer(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v14, v4}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setFarmerTypeId(Ljava/lang/String;)V

    .line 477
    const-string v15, "True"

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setIsActive(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v14, v8}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setAudiencefarmer(I)V

    .line 479
    invoke-virtual {v14, v5}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setServerupdatedstatus(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v14, v6}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setColumn5(Ljava/lang/String;)V

    .line 483
    new-instance v8, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-direct {v8}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;-><init>()V

    move-object/from16 v16, v4

    const/4 v15, 0x0

    .line 486
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_5

    .line 487
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    move-object/from16 v17, v5

    .line 488
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    move-object/from16 v18, v6

    const/16 v6, 0x29b

    if-ne v5, v6, :cond_2

    .line 489
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setRespondentNo(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setRespondentNo(Ljava/lang/String;)V

    .line 492
    :cond_2
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    move-object/from16 p1, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v9

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/conceptglobal/pmc/common/Queries;->getAudianceFarmerMappingID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 493
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/conceptglobal/pmc/common/Queries;->gettingAudianceFramerObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getListAudianceData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/AudianceFarmer;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 494
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FarmerMaster"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 495
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Mobile"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 498
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/utils/Encryption;->encryptRemovenewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 501
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT Mobile FROM FarmerMaster where  Mobile = \'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v0

    .line 502
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT Mobile FROM PMCTerritoryFarmerMaster where  Mobile =\'"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_9

    if-eqz v1, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eqz v5, :cond_4

    .line 508
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FarmerCropDetails"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 509
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 512
    :try_start_1
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Acreages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 513
    const-string v0, "AcreageValue"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v0, p3

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    goto/16 :goto_3

    :cond_5
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 p1, v7

    .line 521
    :try_start_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 522
    invoke-static {v14, v10, v11}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAudianceFarmerDetails(Lcom/conceptglobal/pmc/model/FarmerMaster;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 524
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 525
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getAcresDertails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 526
    array-length v1, v0

    if-lez v1, :cond_7

    .line 527
    const-string v1, "AcreageType"

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 528
    aget-object v0, v0, v1

    aget-object v0, v0, v1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 530
    :goto_4
    invoke-static {v8, v12, v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAudianceFarmerCropDetails(Lcom/conceptglobal/pmc/model/FarmerCropMapping;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v0, p3

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_2

    :catch_1
    move-exception v0

    .line 535
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    return-void
.end method

.method private addAudianceRetailerDetails(Ljava/util/List;Ljava/lang/String;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 540
    const-string p2, "\'"

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 541
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 542
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 543
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 544
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 546
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 547
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 553
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 554
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 555
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 559
    new-instance v5, Lcom/conceptglobal/pmc/model/DealerMaster;

    invoke-direct {v5}, Lcom/conceptglobal/pmc/model/DealerMaster;-><init>()V

    .line 560
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->setPDAId(I)V

    .line 561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DealerMaster;->getPDAId()I

    move-result v7

    int-to-long v7, v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->setContactId(Ljava/lang/String;)V

    const/4 v6, 0x2

    .line 562
    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->setCustomerTypeID(I)V

    .line 563
    invoke-virtual {v5, v2}, Lcom/conceptglobal/pmc/model/DealerMaster;->setServerUpdatedStatus(Z)V

    const/4 v6, 0x1

    .line 564
    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->setIsNew(Z)V

    .line 565
    const-string v6, "0"

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->setStatusReason(Ljava/lang/String;)V

    .line 566
    const-string v6, "True"

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/DealerMaster;->setIsActive(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 571
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 572
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 573
    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/conceptglobal/pmc/common/Queries;->getAudianceFarmerMappingID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 574
    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/conceptglobal/pmc/common/Queries;->gettingAudianceFramerObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getListAudianceData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/AudianceFarmer;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 575
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DealerMaster"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 576
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MobileNumber"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 579
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/conceptglobal/pmc/utils/Encryption;->encryptRemovenewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 582
    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT MobileNumber FROM DealerMaster where  MobileNumber = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v8

    .line 583
    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT MobileNumber FROM PMCTerritoryDealerMaster where  MobileNumber = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v7

    if-nez v8, :cond_2

    if-eqz v7, :cond_3

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 594
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 595
    invoke-static {v5, v3, v4}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAudianceRetailerDetails(Lcom/conceptglobal/pmc/model/DealerMaster;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 603
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method

.method private addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;ZLjava/util/HashMap;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    .line 851
    new-instance v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 853
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeMap:Ljava/util/Map;

    .line 855
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v14, 0x0

    if-gtz v0, :cond_0

    .line 856
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noAttribsAvailToastSA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 860
    :cond_0
    new-instance v15, Landroid/widget/LinearLayout;

    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    .line 861
    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 862
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    iget v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->layoutId:I

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 871
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;

    iget-object v1, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 875
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, -0xbbbbbc

    .line 876
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    add-int/2addr v3, v10

    iput v3, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    new-instance v9, Landroid/widget/ImageView;

    iget-object v2, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800cb

    .line 880
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 881
    iget v2, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 883
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    .line 884
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 886
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 889
    invoke-virtual {v0, v9}, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 891
    iget v1, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 893
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v13, :cond_1

    .line 895
    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 896
    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iget v1, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    sub-int/2addr v1, v10

    aget-object v0, v0, v1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    const/4 v6, 0x0

    .line 900
    :goto_1
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "."

    const-string v2, ""

    if-ge v6, v0, :cond_c

    .line 903
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    const/4 v3, 0x2

    if-eqz v7, :cond_2

    if-ne v6, v3, :cond_2

    .line 905
    invoke-virtual {v0, v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->setIsReadOnly(I)V

    :cond_2
    if-nez v7, :cond_3

    if-ne v6, v3, :cond_3

    .line 907
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/model/AttributeModel;->setIsReadOnly(I)V

    :cond_3
    if-eqz v13, :cond_6

    .line 909
    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_7

    if-gt v6, v3, :cond_7

    if-nez v6, :cond_5

    .line 928
    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iget v1, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    sub-int/2addr v1, v10

    aget-object v0, v0, v1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v6, -0x1

    .line 930
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    .line 910
    :cond_6
    :goto_2
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->childValuelistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    if-eqz p4, :cond_7

    .line 911
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->childValuelistAttributes:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v11, v0, v1, v3}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->performFiltering(Ljava/util/List;Ljava/lang/String;I)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v0

    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-----values"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "test"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v2

    .line 933
    :goto_3
    iget-object v1, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    iget-object v3, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 934
    iget-object v1, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    iget-object v3, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v12, :cond_a

    .line 938
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 939
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object v4, v2

    goto :goto_5

    :cond_a
    :goto_4
    move-object v4, v0

    .line 944
    :goto_5
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    if-eqz v12, :cond_b

    .line 947
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    iget-object v5, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeMap:Ljava/util/Map;

    iget v10, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    const/16 v16, 0x1

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v18, v6

    move-object v6, v15

    move-object/from16 v19, v7

    move/from16 v7, v16

    const/4 v14, -0x2

    move-object/from16 v8, v17

    move-object/from16 v20, v9

    move v9, v10

    const/16 v17, 0x1

    move/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;II)V

    goto :goto_6

    :cond_b
    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    const/4 v14, -0x2

    const/16 v17, 0x1

    .line 949
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    iget-object v5, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v8, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeMap:Ljava/util/Map;

    iget v9, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v6, v15

    move/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;II)V

    :goto_6
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    const/4 v8, -0x2

    const/4 v10, 0x1

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v20, v9

    const/4 v14, -0x2

    const/16 v17, 0x1

    .line 953
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setsData:Ljava/util/Map;

    iget v3, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeMap:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 955
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v3, p2

    .line 957
    invoke-virtual {v3, v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v12, :cond_d

    if-eqz p4, :cond_d

    .line 959
    iget-object v0, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->childValuelistAttributes:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v11, v0, v1, v3}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->performFiltering(Ljava/util/List;Ljava/lang/String;I)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v0

    .line 960
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 961
    iget v1, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->parentAttributeId:I

    iget-object v2, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;ZLjava/util/HashMap;)V

    .line 966
    :cond_d
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$3;

    invoke-direct {v0, v11}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$3;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addFView()V
    .locals 8

    .line 2247
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->windowManager:Landroid/view/WindowManager;

    .line 2248
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2249
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2250
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->screenWidth:I

    .line 2251
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->screenHight:I

    const/4 v0, 0x0

    .line 2252
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->inDragMode:Z

    .line 2253
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->globalView:Landroid/widget/ImageView;

    const v1, 0x7f080061

    .line 2254
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2255
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    const/16 v2, 0x32

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v4

    const/16 v6, 0x8

    const/4 v7, -0x3

    const/16 v5, 0x7d2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x55

    .line 2256
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0xf

    .line 2257
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0x78

    .line 2258
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2259
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->globalView:Landroid/widget/ImageView;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;

    invoke-direct {v2, p0, v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2303
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->globalView:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private captureImage(ILjava/lang/String;)V
    .locals 4

    .line 2018
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 2019
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

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageFile:Ljava/io/File;

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 2021
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->image1Path:Ljava/lang/String;

    .line 2024
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2027
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    const-string v1, "com.conceptglobal.pmcdeepakfertilizers.provider"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageFile:Ljava/io/File;

    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2030
    const-string v1, "output"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2032
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 2033
    const-string v2, ""

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v2, 0x3

    .line 2034
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2037
    :cond_1
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2038
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->startActivityForResult(Landroid/content/Intent;I)V

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

    .line 841
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 842
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 843
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

    .line 2192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2194
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

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

    .line 2195
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2196
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2197
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

    .line 2200
    const-string v1, "ChildAttributeFragment"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_2
    return-object v0
.end method

.method private findCurrentLocation()V
    .locals 5

    .line 1894
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1895
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1898
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$11;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$11;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    const-string v3, "ChildAttributeFragment"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1915
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData(Landroid/os/Bundle;)V
    .locals 7

    .line 291
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->ismba:I

    .line 292
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->farmerId:Ljava/lang/String;

    .line 293
    const-string v0, "ISSELFASSIGN"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->isSelfassign:I

    .line 294
    const-string v0, "SEGMENTID"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->segmentId:I

    .line 295
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityId:I

    .line 296
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->isPlanned:I

    .line 297
    const-string v0, "ParentAttributeId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->parentAttributeId:I

    .line 298
    const-string v0, "ActivityAssignmentId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityAssignmentId:I

    .line 299
    const-string v0, "TRANSID"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->transId:J

    .line 300
    const-string v0, "Count"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->countVillage:I

    .line 301
    const-string v0, "pairId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    .line 302
    const-string v0, "AssignmentId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->assignmentID:I

    .line 303
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->parentAttributeId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityAssignmentId:I

    iget-wide v5, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->transId:J

    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getChildValuesAttributeQueryUpdate(Ljava/lang/String;IIIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->childValuelistAttributes:Ljava/util/List;

    .line 304
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->parentAttributeId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getSelectedAttributeQueryUpdate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->AlertlistAttributes:Ljava/util/List;

    .line 305
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->childValuelistAttributes:Ljava/util/List;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->listAttributes:Ljava/util/List;

    .line 306
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    .line 307
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDay:I

    const/4 v0, 0x2

    .line 308
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mMonth:I

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mYear:I

    .line 310
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->selectedFarmers:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->selectedFarmers:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0905f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    .line 271
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->btnAdd:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 272
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->btnfinish:Landroid/widget/Button;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    .line 274
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    .line 275
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 276
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArrIds:Ljava/util/List;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    .line 280
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$SingleTapConfirm;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$SingleTapConfirm;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private refreshSetViews(I)V
    .locals 10

    .line 980
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setsData:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 982
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setsData:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, -0x1

    .line 983
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mForOperations:I

    .line 984
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mForDates:I

    const/4 v0, 0x0

    .line 985
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    .line 986
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 987
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 988
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 989
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setsData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 990
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 991
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 993
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 994
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 995
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 998
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    const v6, 0x7f100001

    if-eqz v4, :cond_1

    .line 999
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1000
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1002
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v9, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1004
    :cond_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Multiselect Dropdown"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1005
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1006
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1008
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v9, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1010
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1014
    :cond_4
    iget v4, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->parentAttributeId:I

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->selectedFarmers:Ljava/util/HashMap;

    move-object v3, p0

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;ZLjava/util/HashMap;)V

    add-int/lit8 v0, v0, 0x1

    .line 1015
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .line 1018
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 2097
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->dateSelectedEdit:Landroid/widget/EditText;

    .line 2098
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2100
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2102
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2104
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2105
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 1659
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1660
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1661
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1662
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setListeners()V
    .locals 8

    .line 318
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->selectedFarmers:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->selectedFarmers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 320
    iget v3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->parentAttributeId:I

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->selectedFarmers:Ljava/util/HashMap;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;ZLjava/util/HashMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_0
    :goto_1
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->countVillage:I

    if-ge v1, v0, :cond_1

    .line 324
    iget v3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->parentAttributeId:I

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;ZLjava/util/HashMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->btnAdd:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->btnfinish:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$2;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1649
    const-string v0, "."

    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

    if-eqz v1, :cond_0

    .line 1650
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

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

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

    .line 1653
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1654
    const-string p2, "ChildAttributeFragment"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 2054
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2055
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$13;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$13;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2061
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 2110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mFiledStr:Ljava/lang/String;

    .line 2111
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2113
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2115
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2117
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setDate(I)V

    return-void
.end method

.method private updateViews(Landroid/widget/ImageView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 2307
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;II)V
    .locals 41
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
            ">;II)V"
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

    move/from16 v1, p9

    .line 1056
    iget v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mForOperations:I

    const/4 v8, 0x1

    add-int/2addr v2, v8

    iput v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mForOperations:I

    .line 1057
    iget v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mForDates:I

    add-int/2addr v2, v8

    iput v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mForDates:I

    .line 1058
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1062
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    .line 1063
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 1064
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x5

    .line 1065
    invoke-virtual {v6, v7, v7, v7, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1066
    iget v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->layoutId:I

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1071
    new-instance v4, Landroid/widget/TextView;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, -0xbbbbbc

    .line 1072
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1073
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v2

    if-ne v2, v8, :cond_0

    .line 1075
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v2, 0x0

    .line 1081
    iput-object v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    .line 1085
    new-instance v2, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$4;

    invoke-direct {v2, v10}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$4;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    .line 1109
    new-instance v5, Landroid/widget/EditText;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v5, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1110
    const-string v3, "Dropdown"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v9, "NumberBox"

    move-object/from16 v16, v9

    const-string v9, "TextBox"

    move-object/from16 v17, v9

    const-string v9, "TextBoxND"

    const-string v8, "ChildAttributeFragment"

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

    const/high16 v15, 0x7f100000

    const/16 v7, 0x11

    if-eqz v3, :cond_9

    .line 1111
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1112
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v15, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1113
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f100007

    invoke-virtual {v3, v1, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1114
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mForOperations:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 1115
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTextSize(F)V

    const v0, 0x7f0800dc

    .line 1117
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v0, 0x7f0800d7

    const/4 v15, 0x0

    .line 1118
    invoke-virtual {v3, v15, v15, v0, v15}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1119
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1121
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 1122
    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 1124
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 1128
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

    .line 1129
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->cropId:Ljava/lang/String;

    .line 1130
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getCropNameQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1132
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1135
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1138
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1141
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1146
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

    .line 1149
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1147
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

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1153
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

    .line 1162
    :cond_6
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKey(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100001

    .line 1163
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1164
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1154
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

    .line 1155
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKeyDefault(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100001

    .line 1156
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1157
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1159
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

    .line 1166
    :goto_3
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v8

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v25

    const/16 v24, 0x0

    move-object v1, v0

    const/16 v18, 0x1

    move-object/from16 v2, p0

    move-object/from16 p4, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-wide v4, v8

    move-object v9, v6

    const/4 v8, 0x2

    move-wide/from16 v6, v25

    move-object/from16 v8, p5

    move-object/from16 v29, v9

    move-object/from16 v30, v16

    move-object/from16 v31, v17

    move-object/from16 v32, v19

    move-object/from16 v33, v20

    move-object/from16 v34, v21

    move-object/from16 v35, v22

    move-object/from16 v15, v23

    move-object/from16 v9, v24

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object v3, v1

    goto/16 :goto_c

    :cond_9
    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v16

    move-object/from16 v31, v17

    move-object/from16 v32, v19

    move-object/from16 v33, v20

    move-object/from16 v34, v21

    move-object/from16 v35, v22

    move-object/from16 v15, v23

    const/high16 v3, 0x7f100000

    const/4 v7, 0x0

    .line 1167
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1169
    new-instance v9, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1170
    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1171
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1172
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f100007

    invoke-virtual {v9, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1173
    iget v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mForOperations:I

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setId(I)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 1174
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setTextSize(F)V

    const v2, 0x7f0800dc

    .line 1175
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1176
    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v5, 0x11

    .line 1177
    invoke-virtual {v9, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1178
    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setLongClickable(Z)V

    const v2, 0x7f0800d7

    .line 1179
    invoke-virtual {v9, v7, v7, v2, v7}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1181
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_4

    .line 1186
    :cond_a
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1189
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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v0, :cond_11

    if-eqz p7, :cond_c

    .line 1194
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    .line 1195
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->farmerId:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityAssignmentId:I

    move-object/from16 p4, v6

    iget-wide v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->transId:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v3, p5

    move-object/from16 v7, p4

    const/16 v11, 0x11

    :try_start_3
    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry_byIds(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJ)Ljava/lang/String;

    move-result-object v0

    .line 1194
    invoke-virtual {v7, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    const/16 v11, 0x11

    .line 1197
    :goto_5
    :try_start_4
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_6
    const/4 v14, 0x0

    goto :goto_8

    :cond_c
    const/16 v11, 0x11

    .line 1201
    :try_start_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    .line 1202
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v3, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityAssignmentId:I

    iget-wide v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->transId:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p4, v7

    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p5

    move-object/from16 v11, p4

    const/4 v14, 0x0

    :try_start_6
    invoke-virtual/range {v0 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry_Pairid(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1201
    invoke-virtual {v11, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    const/4 v14, 0x0

    .line 1204
    :goto_7
    :try_start_7
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1209
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 1212
    :goto_9
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_f

    .line 1214
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandSelected()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1215
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_d

    .line 1218
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    :cond_d
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1227
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1230
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v9, v1, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_b

    .line 1235
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

    goto :goto_b

    :cond_11
    const/4 v14, 0x0

    .line 1238
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
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    const/4 v14, 0x0

    .line 1242
    :goto_a
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1244
    :goto_b
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/4 v11, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v8, p5

    move-object v14, v9

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;)V

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object v3, v14

    move-object/from16 v23, v15

    :goto_c
    move-object/from16 v2, v30

    move-object/from16 v4, v31

    move-object/from16 v40, v32

    move-object/from16 v37, v33

    move-object/from16 v38, v34

    const/4 v15, 0x2

    goto/16 :goto_1d

    :cond_12
    move-object/from16 v11, v35

    .line 1246
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v14, "0"

    if-eqz v4, :cond_16

    .line 1247
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    .line 1248
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1249
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1250
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mForDates:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 1251
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1252
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1253
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1254
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1255
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1256
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1257
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 1259
    :try_start_8
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->cropId:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->cropId:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1260
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->cropId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->dos:Ljava/lang/String;

    .line 1262
    :cond_13
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->dos:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 1263
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->dos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1264
    :cond_14
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    .line 1265
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1267
    :cond_15
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    .line 1270
    const-string v1, "Attribute"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    move-object/from16 v35, v11

    move-object/from16 v23, v15

    move-object/from16 v2, v30

    move-object/from16 v4, v31

    move-object/from16 v40, v32

    move-object/from16 v37, v33

    move-object/from16 v38, v34

    goto/16 :goto_10

    :cond_16
    move-object/from16 v6, v34

    const/4 v8, 0x1

    .line 1272
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1273
    new-instance v0, Landroid/widget/EditText;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v4, 0x0

    .line 1274
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1275
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1276
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f100007

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1277
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1278
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1279
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1280
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v7, 0x2

    new-array v1, v7, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1282
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1283
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_e

    .line 1286
    :cond_17
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 1284
    :cond_18
    :goto_e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 1289
    :cond_19
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v23, v15

    move-object/from16 v2, v30

    move-object/from16 v4, v31

    move-object/from16 v40, v32

    move-object/from16 v37, v33

    :goto_10
    const/4 v15, 0x2

    goto/16 :goto_1c

    :cond_1a
    move-object/from16 v4, v33

    const/4 v7, 0x2

    .line 1291
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1292
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    .line 1293
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1294
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1295
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1296
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1297
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1298
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1299
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 1300
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v8, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/utils/UtilDeclarations$NumericDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations$NumericDigitsInputFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1301
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    new-instance v5, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v16

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v18

    const/16 v20, 0x0

    move-object v1, v5

    move-object/from16 v2, p0

    move-object/from16 v37, v4

    move-object/from16 v36, v5

    move-wide/from16 v4, v16

    move-object/from16 v38, v6

    move-wide/from16 v6, v18

    move-object/from16 v35, v11

    const/4 v11, 0x1

    move-object/from16 v8, p5

    move-object v11, v9

    move-object/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;)V

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1303
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_11

    .line 1306
    :cond_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1308
    :cond_1c
    :goto_11
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1309
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_12

    .line 1312
    :cond_1d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 1310
    :cond_1e
    :goto_12
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 1315
    :cond_1f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_13
    move-object/from16 v23, v15

    move-object/from16 v2, v30

    move-object/from16 v4, v31

    move-object/from16 v40, v32

    goto/16 :goto_10

    :cond_20
    move-object/from16 v37, v4

    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object v11, v9

    move-object/from16 v9, v32

    .line 1317
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1318
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    .line 1319
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1320
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1321
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1322
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1323
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1324
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1325
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1326
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$DecimalDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    const/4 v8, 0x2

    invoke-direct {v1, v10, v3, v8}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;II)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1327
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    new-instance v6, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v16

    const/16 v18, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v39, v6

    move-wide/from16 v6, v16

    move-object/from16 v23, v15

    const/4 v15, 0x2

    move-object/from16 v8, p5

    move-object/from16 v40, v9

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;)V

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1329
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1330
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_14

    .line 1333
    :cond_21
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1331
    :cond_22
    :goto_14
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1336
    :cond_23
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    move-object/from16 v2, v30

    move-object/from16 v4, v31

    goto/16 :goto_1c

    :cond_24
    move-object/from16 v40, v9

    move-object/from16 v23, v15

    move-object/from16 v4, v31

    const/4 v15, 0x2

    .line 1338
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1339
    new-instance v0, Landroid/widget/EditText;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v5, 0x1

    .line 1340
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1341
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1342
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f100007

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1343
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1344
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1345
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1346
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v15, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v5

    invoke-direct {v3, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x1

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1347
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v0, 0x15

    if-eq v13, v0, :cond_25

    const/16 v0, 0x14

    if-ne v13, v0, :cond_26

    .line 1350
    :cond_25
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationFlag:I

    add-int/2addr v0, v5

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationFlag:I

    .line 1353
    :cond_26
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_16

    .line 1356
    :cond_27
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v15, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_17

    :cond_28
    :goto_16
    const/4 v3, 0x1

    .line 1354
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/utils/UtilDeclarations$DecimalDigitsInputFilter;

    const/4 v3, 0x4

    const/4 v5, 0x6

    invoke-direct {v2, v3, v5}, Lcom/conceptglobal/pmc/utils/UtilDeclarations$DecimalDigitsInputFilter;-><init>(II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1359
    :goto_17
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1360
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_29

    goto :goto_18

    .line 1363
    :cond_29
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 1361
    :cond_2a
    :goto_18
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 1366
    :cond_2b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_19
    move-object/from16 v2, v30

    goto/16 :goto_1c

    :cond_2c
    move-object/from16 v2, v30

    .line 1368
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1369
    new-instance v0, Landroid/widget/EditText;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v5, 0x1

    .line 1370
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1371
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1372
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1373
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f100007

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1374
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1375
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1376
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1377
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1378
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v5

    invoke-direct {v1, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1379
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1380
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_1a

    .line 1383
    :cond_2d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 1381
    :cond_2e
    :goto_1a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 1386
    :cond_2f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 1388
    :cond_30
    const-string v5, "Label"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1389
    new-instance v5, Landroid/widget/EditText;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v6, 0x1

    .line 1390
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1391
    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1392
    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1393
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v5, 0x7f100007

    invoke-virtual {v3, v5, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1394
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const v3, 0x7f0800dc

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1395
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 1396
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1399
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_1b

    .line 1402
    :cond_31
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 1400
    :cond_32
    :goto_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_1c

    .line 1404
    :cond_33
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1405
    new-instance v0, Landroid/widget/ImageView;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    const v5, 0x7f080090

    .line 1407
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1408
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "###"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1409
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1410
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f100007

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1411
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1413
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_34

    .line 1415
    new-instance v0, Ljava/io/File;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1418
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1419
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1422
    :cond_34
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mImageviews:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1423
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$5;

    invoke-direct {v1, v10, v13}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$5;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_35
    :goto_1c
    const/4 v3, 0x0

    .line 1439
    :goto_1d
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1445
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1446
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1447
    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v9, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityId:I

    invoke-virtual {v8, v13, v9}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x64

    const/4 v9, -0x2

    const/4 v11, -0x1

    if-eqz v7, :cond_36

    .line 1448
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const v14, 0x3ee66666    # 0.45f

    invoke-direct {v7, v11, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v14, 0x11

    .line 1449
    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1450
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x3f19999a    # 0.6f

    invoke-direct {v14, v11, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1451
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-direct {v5, v11, v9, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v15, 0xa

    .line 1452
    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1453
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const v8, 0x3f666666    # 0.9f

    invoke-direct {v15, v11, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v8, 0x30

    .line 1454
    iput v8, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1455
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f000000    # 0.5f

    move-object/from16 p9, v5

    const/16 v5, 0x64

    invoke-direct {v8, v11, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0xa

    .line 1456
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v5, p9

    goto :goto_1e

    :cond_36
    const/16 v5, 0x64

    .line 1459
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const v8, 0x3ee66666    # 0.45f

    invoke-direct {v7, v11, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v8, 0x11

    .line 1460
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1461
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v15, -0x2

    invoke-direct {v14, v11, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1462
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {v9, v11, v15, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v8, 0xa

    .line 1463
    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1464
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p4, v7

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v15, v11, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1465
    iput v8, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1466
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v8, -0x2

    invoke-direct {v5, v11, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v7, p4

    move-object v8, v15

    move-object v15, v5

    move-object v5, v9

    :goto_1e
    move-object/from16 v9, v27

    .line 1468
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v11, v28

    .line 1469
    invoke-virtual {v11, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1470
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1471
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1472
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1f
    move-object/from16 v28, v11

    move-object/from16 v1, v23

    :goto_20
    move-object/from16 v5, v29

    move-object/from16 v6, v35

    :goto_21
    move-object/from16 v8, v37

    move-object/from16 v7, v38

    :goto_22
    move-object/from16 v11, v40

    goto/16 :goto_25

    .line 1473
    :cond_37
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1474
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1f

    :cond_38
    move-object/from16 v1, v23

    .line 1475
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1476
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_23
    move-object/from16 v28, v11

    goto :goto_20

    .line 1477
    :cond_39
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1478
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    :cond_3a
    move-object/from16 v6, v35

    .line 1479
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1480
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_24
    move-object/from16 v28, v11

    move-object/from16 v5, v29

    goto :goto_21

    .line 1481
    :cond_3b
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1482
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    .line 1483
    :cond_3c
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1484
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    :cond_3d
    move-object/from16 v7, v38

    .line 1485
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1486
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v28, v11

    move-object/from16 v5, v29

    move-object/from16 v8, v37

    goto :goto_22

    :cond_3e
    move-object/from16 v8, v37

    .line 1487
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1488
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v28, v11

    move-object/from16 v5, v29

    goto :goto_22

    :cond_3f
    move-object/from16 v28, v11

    move-object/from16 v11, v40

    .line 1489
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1490
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_40
    move-object/from16 v5, v29

    .line 1492
    :goto_25
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1493
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1494
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_41
    :goto_26
    const/4 v9, 0x1

    goto/16 :goto_27

    .line 1495
    :cond_42
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1496
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1497
    :cond_43
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1498
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1499
    :cond_44
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1500
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1501
    :cond_45
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1502
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1503
    :cond_46
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1504
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1505
    :cond_47
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1506
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1507
    :cond_48
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1508
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1509
    :cond_49
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1510
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1511
    :cond_4a
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1512
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1514
    :goto_27
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_4b

    .line 1515
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v0

    if-ne v0, v9, :cond_4b

    .line 1516
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1517
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    const/16 v9, 0x29b

    if-ne v0, v9, :cond_4b

    .line 1519
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v16
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    move-object/from16 v35, v6

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-object/from16 v33, v8

    :try_start_b
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    .line 1520
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    move-object/from16 v6, p5

    const/4 v8, 0x0

    .line 1521
    :try_start_c
    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_2b

    :catch_8
    move-exception v0

    goto :goto_2a

    :catch_9
    move-exception v0

    goto :goto_29

    :catch_a
    move-exception v0

    goto :goto_28

    :catch_b
    move-exception v0

    move-object/from16 v35, v6

    :goto_28
    move-object/from16 v33, v8

    :goto_29
    const/4 v8, 0x0

    .line 1523
    :goto_2a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    :cond_4b
    move-object/from16 v35, v6

    move-object/from16 v33, v8

    const/4 v8, 0x0

    .line 1528
    :goto_2b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v9, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityId:I

    invoke-virtual {v6, v13, v9}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4c

    .line 1529
    new-instance v0, Landroid/widget/Button;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1531
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1532
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0801d2

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1533
    invoke-virtual {v0, v15}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1534
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1536
    new-instance v6, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$6;

    invoke-direct {v6, v10}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$6;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1557
    :cond_4c
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationFlag:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4d

    .line 1558
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationLayout:Landroid/widget/LinearLayout;

    .line 1559
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1562
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2d

    :cond_4d
    const/4 v6, 0x2

    if-ne v0, v6, :cond_4e

    .line 1566
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1567
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1568
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 1569
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1570
    iget v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->layoutId:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1572
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, -0xbbbbbc

    .line 1573
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x4

    .line 1575
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1576
    invoke-virtual {v0, v5, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1577
    new-instance v5, Landroid/widget/Button;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    .line 1578
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_getButton()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1579
    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    move-object/from16 v6, p1

    const/16 v9, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1580
    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setGravity(I)V

    .line 1581
    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 1582
    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v14, 0x7f0800c6

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1583
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v9, 0x3ee66666    # 0.45f

    const/4 v14, -0x2

    invoke-direct {v5, v6, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v6, 0xa

    .line 1584
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1585
    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    invoke-virtual {v0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1586
    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1587
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v6, p6

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1589
    iput v8, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationFlag:I

    .line 1590
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    new-instance v5, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$7;

    invoke-direct {v5, v10}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$7;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2d

    :cond_4e
    move-object/from16 v6, p6

    const/16 v0, 0x2a5

    if-eq v13, v0, :cond_50

    const/16 v0, 0x2ce

    if-ne v13, v0, :cond_4f

    goto :goto_2c

    .line 1604
    :cond_4f
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2d

    :cond_50
    :goto_2c
    if-eqz p10, :cond_51

    .line 1602
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1608
    :cond_51
    :goto_2d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArrIds:Ljava/util/List;

    move-object/from16 v5, v28

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1610
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1611
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    move-object/from16 v2, p8

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    :cond_52
    move-object/from16 v2, p8

    .line 1612
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1613
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1615
    :cond_53
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1616
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1618
    :cond_54
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1619
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    :cond_55
    move-object/from16 v4, v33

    .line 1621
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1622
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1624
    :cond_56
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1625
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1626
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 1627
    :cond_57
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1628
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_58
    move-object/from16 v1, v35

    .line 1630
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1631
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1632
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 1633
    :cond_59
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1634
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 1636
    :cond_5a
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1637
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1638
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1639
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    :cond_5b
    :goto_2e
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->layoutId:I

    return-void
.end method

.method public isDataValid()Z
    .locals 24

    move-object/from16 v1, p0

    .line 609
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 611
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setsData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 612
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 613
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 618
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-string v6, ""

    move v7, v0

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 619
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 620
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 622
    new-instance v13, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v13, v14}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 628
    :try_start_0
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    const/16 v15, 0x337

    if-ne v14, v15, :cond_0

    .line 629
    :try_start_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    goto/16 :goto_d

    .line 631
    :cond_0
    :try_start_2
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    const/16 v15, 0x338

    if-ne v14, v15, :cond_1

    .line 632
    :try_start_3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 634
    :cond_1
    :try_start_4
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    const/16 v15, 0x336

    if-ne v14, v15, :cond_2

    .line 635
    :try_start_5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 637
    :cond_2
    :goto_2
    :try_start_6
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    const-string v15, "0"

    const-wide/16 v16, 0x0

    const-string v11, "TextBoxN"

    const-string v3, " - "

    move-object/from16 v18, v2

    const-string v2, "TextBoxND"

    move-object/from16 v19, v4

    const-string v4, " "

    move/from16 v20, v7

    const/4 v7, 0x1

    if-ne v14, v7, :cond_9

    .line 638
    :try_start_7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    if-nez v14, :cond_3

    .line 641
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object/from16 v21, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_d

    .line 643
    :cond_3
    :try_start_9
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    if-ge v14, v7, :cond_4

    .line 646
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v14

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v20
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-object/from16 v21, v8

    :try_start_b
    invoke-virtual/range {v20 .. v20}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v21, v8

    goto :goto_3

    :cond_4
    move-object/from16 v21, v8

    move/from16 v7, v20

    const/4 v8, 0x1

    .line 648
    :goto_4
    :try_start_c
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    if-eqz v14, :cond_5

    .line 650
    :try_start_d
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_5

    .line 654
    :catch_3
    :try_start_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 657
    :cond_5
    :goto_5
    :try_start_f
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 658
    :cond_6
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_7
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v16
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    cmp-long v2, v14, v16

    if-gez v2, :cond_8

    .line 661
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_8
    if-eqz v8, :cond_10

    const/4 v2, 0x0

    .line 666
    :try_start_11
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v21, v8

    move/from16 v7, v20

    goto/16 :goto_d

    :cond_9
    move-object/from16 v21, v8

    .line 672
    :try_start_12
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_f

    .line 673
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v8
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    if-ge v7, v8, :cond_a

    .line 676
    :try_start_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v8, v21

    goto/16 :goto_3

    :cond_a
    move/from16 v7, v20

    const/4 v8, 0x1

    .line 678
    :goto_6
    :try_start_14
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    if-eqz v14, :cond_b

    .line 680
    :try_start_15
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    goto :goto_7

    .line 684
    :catch_6
    :try_start_16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 687
    :cond_b
    :goto_7
    :try_start_17
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 688
    :cond_c
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_d
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v14, v2

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v16
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    cmp-long v2, v14, v16

    if-gez v2, :cond_e

    .line 691
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_e
    if-eqz v8, :cond_10

    const/4 v2, 0x0

    .line 695
    :try_start_19
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_f
    move/from16 v7, v20

    const/4 v8, 0x1

    :cond_10
    :goto_8
    if-eqz v8, :cond_16

    .line 710
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DropDown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    const v3, 0x7f100001

    const-string v4, "."

    if-eqz v2, :cond_12

    .line 711
    :try_start_1a
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 712
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_9

    .line 714
    :cond_11
    invoke-virtual {v13, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 715
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 717
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 718
    :cond_12
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    const-string v8, "Multiselect Dropdown"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 720
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 721
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 722
    array-length v2, v0

    if-lez v2, :cond_13

    .line 723
    array-length v2, v0

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v2, :cond_16

    aget-object v3, v0, v11

    .line 724
    new-instance v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v8, v14}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 725
    invoke-virtual {v8, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 728
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 731
    :cond_13
    invoke-virtual {v13, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 734
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 737
    :cond_14
    invoke-virtual {v13, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 740
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 744
    :cond_15
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 747
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    goto :goto_c

    :cond_16
    :goto_b
    move-object/from16 v8, v21

    goto :goto_e

    :catch_8
    move-exception v0

    move/from16 v7, v20

    :goto_c
    move-object/from16 v8, v21

    goto :goto_d

    :catch_9
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v7

    move-object/from16 v21, v8

    goto :goto_d

    :catch_a
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v7

    .line 751
    :goto_d
    const-string v2, "ChildAttributeFragment"

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    move-object/from16 v2, v18

    move-object/from16 v4, v19

    goto/16 :goto_1

    :cond_17
    move-object/from16 v18, v2

    move/from16 v20, v7

    .line 754
    iget v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityId:I

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_18

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 755
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_18

    .line 757
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "Physical stock and liquidation stock should not be more than POS Machine stock (in MT)"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    goto :goto_f

    :cond_18
    move/from16 v0, v20

    :goto_f
    move-object/from16 v2, v18

    goto/16 :goto_0

    :cond_19
    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 266
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 204
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mActivity:Landroid/app/Activity;

    .line 207
    :try_start_0
    check-cast p1, Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    const-string v0, "android.intent.action.GPSTurnedOnResult"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$LocalBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$LocalBroadcastReceiver;

    .line 215
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2068
    :cond_0
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDay:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 221
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 222
    iput p3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setCount:I

    const v0, 0x7f0c0070

    .line 223
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->rootView:Landroid/view/View;

    .line 224
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->init()V

    .line 225
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 226
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getData(Landroid/os/Bundle;)V

    .line 227
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setListeners()V

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onCropchangeListener(I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1867
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->farmerId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->dos:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1868
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->dos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1872
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 240
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 241
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setsData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 242
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 1985
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Longitude"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1987
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1988
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1989
    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 1990
    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 1991
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1992
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1993
    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 1994
    check-cast v7, Landroid/widget/EditText;

    .line 1995
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1996
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

    .line 1997
    :cond_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1998
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

    .line 2009
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->locationView:Landroid/view/View;

    return-void
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 286
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 253
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 247
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 234
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

    .line 768
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_9

    move-object/from16 v6, p1

    .line 769
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 791
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

    .line 792
    :try_start_1
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 795
    :try_start_2
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 797
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 800
    :try_start_4
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 802
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-eqz v16, :cond_3

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 805
    :try_start_6
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 808
    :try_start_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 813
    :cond_4
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 814
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 817
    :try_start_8
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 819
    :goto_3
    :try_start_9
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-eqz v16, :cond_7

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 822
    :try_start_a
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 825
    :try_start_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 831
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

    .line 1030
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    monitor-enter p0

    .line 1033
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1034
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    if-eqz p2, :cond_2

    .line 1036
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1038
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

    .line 1040
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSequenceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1041
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 1042
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    goto :goto_0

    :cond_1
    return-object p1

    .line 1050
    :cond_2
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1034
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public testMethod()V
    .locals 13

    .line 432
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityAssignmentId:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->parentAttributeId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsChildActivity(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityId:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->isPlanned:I

    iget v7, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->assignmentID:I

    iget v9, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->segmentId:I

    iget-wide v10, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->transId:J

    iget v12, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityAssignmentId:I

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v12}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsWithSequenceId(Ljava/util/List;Ljava/lang/String;IIIIIIJI)V

    .line 436
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addAudianceFarmerDetails(Ljava/util/List;Ljava/lang/String;I)V

    .line 437
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->activityId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addAudianceRetailerDetails(Ljava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 439
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->onDestroy()V

    .line 443
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;->addOrDeleteTab(IIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.class public Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;
.super Landroidx/fragment/app/Fragment;
.source "AttributesTableFarmatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/CropChanger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$LocalBroadcastReceiver;,
        Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$SingleTapConfirm;,
        Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;,
        Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$NumericDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$DecimalDigitsInputFilter;
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

.field private DisplayRows:I

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

.field private horizontalScrollView:Landroid/widget/HorizontalScrollView;

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

.field private isLoadingDone:Z

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

.field private lookupdata:[[Ljava/lang/String;

.field private lookupdata_lineIds:[[Ljava/lang/String;

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

.field private mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$LocalBroadcastReceiver;

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

.field private pestCotrolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queries:Lcom/conceptglobal/pmc/common/Queries;

.field private rootView:Landroid/view/View;

.field private screenHight:I

.field private screenWidth:I

.field private segmentId:I

.field private selectedCropID:Ljava/lang/String;

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

    .line 213
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 113
    const-string v0, "ChildAttributeFragment"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setCount:I

    .line 119
    const-string v1, "0"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->farmerId:Ljava/lang/String;

    .line 121
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationFlag:I

    .line 127
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->datePos:I

    .line 132
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mFiledStr:Ljava/lang/String;

    const/4 v1, -0x1

    .line 140
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mForOperations:I

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mForDates:I

    .line 141
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->layoutId:I

    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->childValuelistAttributes:Ljava/util/List;

    .line 157
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->brandsList:Ljava/util/List;

    .line 159
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->countVillage:I

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->villageDetails:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeMap:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setsData:Ljava/util/Map;

    const/4 v0, 0x1

    .line 196
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->ATTRIBUTEID_TAG:I

    const/4 v0, 0x2

    .line 197
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->SETID_TAG:I

    const/4 v0, 0x3

    .line 198
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->ENTRYID_TAG:I

    .line 1832
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$6;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->operationListener:Landroid/view/View$OnClickListener;

    .line 1940
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$7;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$7;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 2060
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$8;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    .line 2215
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$10;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$10;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->datesListener:Landroid/view/View$OnClickListener;

    .line 2247
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$12;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->findCurrentLocation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Ljava/util/HashMap;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Ljava/util/Map;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setsData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Ljava/util/List;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->listAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Ljava/util/List;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArrIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Ljava/util/List;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->ismba:I

    return p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->dateSelectedEdit:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mYear:I

    return p0
.end method

.method static synthetic access$2202(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;I)I
    .locals 0

    .line 111
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mYear:I

    return p1
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mMonth:I

    return p0
.end method

.method static synthetic access$2302(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;I)I
    .locals 0

    .line 111
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mMonth:I

    return p1
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDay:I

    return p0
.end method

.method static synthetic access$2402(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;I)I
    .locals 0

    .line 111
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDay:I

    return p1
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->updateDisplay()V

    return-void
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isLoadingDone:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;I)Ljava/util/List;
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->filterAttributesByFilterAttribute(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Landroid/content/Context;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityId:I

    return p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->assignmentID:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->farmerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationView:Landroid/view/View;

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

    .line 907
    new-instance v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 909
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeMap:Ljava/util/Map;

    .line 911
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 912
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

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

    .line 916
    :cond_0
    new-instance v14, Landroid/widget/LinearLayout;

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 917
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0xc8

    const/4 v15, -0x2

    invoke-direct {v0, v2, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 918
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 920
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 923
    iget v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->layoutId:I

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 928
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;

    iget-object v2, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 929
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 930
    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, -0xbbbbbc

    .line 935
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    iget v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v11, 0x0

    .line 954
    :goto_0
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_6

    .line 957
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-----objAttribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->childValuelistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, ""

    if-lez v0, :cond_1

    if-eqz p4, :cond_1

    .line 960
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->childValuelistAttributes:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v12, v0, v3, v4}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->performFiltering(Ljava/util/List;Ljava/lang/String;I)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v0

    .line 961
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

    .line 963
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 974
    :goto_1
    iget-object v1, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    iget-object v3, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 975
    iget-object v1, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    iget-object v3, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v13, :cond_4

    .line 979
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 980
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    move-object v4, v0

    .line 984
    :goto_3
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    if-eqz v13, :cond_5

    .line 987
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    iget-object v5, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v8, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeMap:Ljava/util/Map;

    iget v9, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setCount:I

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v6, v14

    move/from16 v16, v11

    invoke-virtual/range {v0 .. v11}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;III)V

    goto :goto_4

    :cond_5
    move/from16 v16, v11

    .line 989
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    iget-object v5, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v8, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeMap:Ljava/util/Map;

    iget v9, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setCount:I

    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v6, v14

    invoke-virtual/range {v0 .. v11}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;III)V

    :goto_4
    add-int/lit8 v11, v16, 0x1

    goto/16 :goto_0

    .line 995
    :cond_6
    iget-object v0, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setsData:Ljava/util/Map;

    iget v1, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v12, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeMap:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v1, p2

    .line 999
    invoke-virtual {v1, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private captureImage(ILjava/lang/String;)V
    .locals 4

    .line 2193
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 2194
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

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageFile:Ljava/io/File;

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 2196
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->image1Path:Ljava/lang/String;

    .line 2199
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2201
    const-string v0, "com.conceptglobal.pmcdeepakfertilizers.provider"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2205
    const-string v1, "output"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2207
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 2208
    const-string v2, ""

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v2, 0x3

    .line 2209
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2211
    :cond_1
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2212
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->startActivityForResult(Landroid/content/Intent;I)V

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

    .line 897
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 898
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 899
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

    .line 2374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2376
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

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

    .line 2377
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2378
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2379
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

    .line 2382
    const-string v1, "ChildAttributeFragment"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_2
    return-object v0
.end method

.method private findCurrentLocation()V
    .locals 5

    .line 2071
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2072
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 2075
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$9;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$9;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V

    const-string v3, "ChildAttributeFragment"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2092
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData(Landroid/os/Bundle;)V
    .locals 9

    .line 313
    const-string v0, "FirstDropDownDataQry"

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->ismba:I

    .line 314
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->farmerId:Ljava/lang/String;

    .line 315
    const-string v1, "CropId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->selectedCropID:Ljava/lang/String;

    .line 316
    const-string v1, "DisplayRows"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->DisplayRows:I

    .line 317
    const-string v1, "ISSELFASSIGN"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isSelfassign:I

    .line 318
    const-string v1, "SEGMENTID"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->segmentId:I

    .line 319
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityId:I

    .line 320
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isPlanned:I

    .line 321
    const-string v1, "ParentAttributeId"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->parentAttributeId:I

    .line 322
    const-string v1, "ActivityAssignmentId"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityAssignmentId:I

    .line 323
    const-string v1, "TRANSID"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->transId:J

    .line 324
    const-string v1, "Count"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->countVillage:I

    .line 325
    const-string v1, "pairId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    .line 326
    const-string v1, "AssignmentId"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->assignmentID:I

    .line 327
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->farmerId:Ljava/lang/String;

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityId:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->parentAttributeId:I

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityAssignmentId:I

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->transId:J

    invoke-virtual/range {v2 .. v8}, Lcom/conceptglobal/pmc/common/Queries;->getChildValuesAttributeQueryUpdate(Ljava/lang/String;IIIJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->childValuelistAttributes:Ljava/util/List;

    .line 328
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->farmerId:Ljava/lang/String;

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityId:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->parentAttributeId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getSelectedAttributeQueryUpdate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->AlertlistAttributes:Ljava/util/List;

    .line 329
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->lookupdata:[[Ljava/lang/String;

    .line 330
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 331
    const-string v0, "BM.Brandid"

    const-string v1, "LineId"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->lookupdata_lineIds:[[Ljava/lang/String;

    .line 333
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->childValuelistAttributes:Ljava/util/List;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->listAttributes:Ljava/util/List;

    .line 334
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    .line 335
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDay:I

    const/4 v0, 0x2

    .line 336
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mMonth:I

    const/4 v0, 0x1

    .line 337
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mYear:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 339
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0905f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    .line 289
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0903b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 290
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->btnAdd:Landroid/widget/Button;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    .line 292
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    .line 293
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 294
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArrIds:Ljava/util/List;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    .line 298
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$SingleTapConfirm;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$SingleTapConfirm;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->gestureDetector:Landroid/view/GestureDetector;

    .line 302
    new-instance v0, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pestCotrolList:Ljava/util/List;

    return-void
.end method

.method private refreshSetViews(I)V
    .locals 10

    .line 1022
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setsData:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1024
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setsData:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 1025
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mForOperations:I

    .line 1026
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mForDates:I

    .line 1027
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setCount:I

    .line 1028
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1029
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1030
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1031
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setsData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1032
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1033
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

    .line 1035
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1036
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1037
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

    .line 1040
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

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

    .line 1041
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1042
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

    .line 1044
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1046
    :cond_1
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

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

    .line 1047
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1048
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

    .line 1050
    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1052
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

    .line 1056
    :cond_4
    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->parentAttributeId:I

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v5, v4, v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V

    add-int/lit8 v2, v2, 0x1

    .line 1057
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .line 1060
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 2271
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->dateSelectedEdit:Landroid/widget/EditText;

    .line 2272
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2274
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2276
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2278
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2279
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 1825
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1826
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1827
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1828
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setListeners()V
    .locals 5

    .line 344
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->lookupdata:[[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 345
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->DisplayRows:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    .line 346
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->DisplayRows:I

    if-ge v2, v0, :cond_1

    .line 347
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->parentAttributeId:I

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v4, v1, v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->lookupdata:[[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 351
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->parentAttributeId:I

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v4, v1, v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1815
    const-string v0, "."

    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

    if-eqz v1, :cond_0

    .line 1816
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

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

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

    .line 1819
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1820
    const-string p2, "ChildAttributeFragment"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 2228
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2229
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

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$11;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$11;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 2284
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mFiledStr:Ljava/lang/String;

    .line 2285
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2287
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2289
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2291
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setDate(I)V

    return-void
.end method

.method private updateViews(Landroid/widget/ImageView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 2430
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;III)V
    .locals 38
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

    .line 1099
    iget v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mForOperations:I

    const/4 v6, 0x1

    add-int/2addr v1, v6

    iput v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mForOperations:I

    .line 1100
    iget v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mForDates:I

    add-int/2addr v1, v6

    iput v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mForDates:I

    .line 1101
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1105
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1106
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v2, p10

    int-to-float v2, v2

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1107
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1109
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x5

    .line 1110
    invoke-virtual {v7, v4, v4, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1111
    iget v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->layoutId:I

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1116
    new-instance v3, Landroid/widget/TextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, -0xbbbbbc

    .line 1117
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1118
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    .line 1119
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1120
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinLines(I)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 1121
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v4, 0x7f060124

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f0800e0

    .line 1123
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/16 v4, 0x11

    .line 1124
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1127
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 1128
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

    .line 1134
    iput-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    .line 1138
    new-instance v6, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$2;

    invoke-direct {v6, v10}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V

    .line 1162
    new-instance v5, Landroid/widget/EditText;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v5, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1164
    const-string v4, "Dropdown"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v9, "TextBoxN"

    move-object/from16 v19, v9

    const-string v9, "TextArea"

    move-object/from16 v20, v9

    const-string v9, "DatePicker"

    move-object/from16 v21, v9

    const-string v9, "Multiselect Dropdown"

    move-object/from16 v23, v9

    const v9, 0x7f100007

    const/high16 v2, 0x7f100000

    if-eqz v4, :cond_1

    if-nez p11, :cond_1

    .line 1165
    new-instance v0, Landroid/widget/EditText;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1166
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1167
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1168
    iget v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mForOperations:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    .line 1169
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1170
    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setEditableFalse(Landroid/widget/EditText;)V

    const/4 v1, 0x2

    .line 1171
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1172
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    const v2, 0x7f0800e0

    .line 1173
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/4 v2, 0x0

    .line 1174
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1175
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1176
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    const/16 v1, 0x11

    .line 1177
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1180
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->lookupdata:[[Ljava/lang/String;

    add-int/lit8 v4, v8, -0x1

    aget-object v1, v1, v4

    const/4 v6, 0x1

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->lookupdata:[[Ljava/lang/String;

    aget-object v1, v1, v4

    aget-object v1, v1, v2

    invoke-virtual {v14, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1182
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->lookupdata:[[Ljava/lang/String;

    aget-object v1, v1, v4

    aget-object v1, v1, v2

    const v6, 0x7f100001

    invoke-virtual {v0, v6, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1183
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->lookupdata:[[Ljava/lang/String;

    aget-object v1, v1, v4

    aget-object v1, v1, v2

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    move-object/from16 v29, v3

    move-object/from16 v34, v5

    move-object/from16 v31, v7

    move v3, v8

    move-object v11, v12

    move v12, v13

    move-object/from16 v36, v19

    move-object/from16 v37, v20

    move-object/from16 v33, v23

    const/16 v1, 0xa

    goto/16 :goto_1f

    :cond_1
    const v22, 0x7f100001

    .line 1186
    const-string v4, "Dropdown"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v1, ""

    const v9, 0x7f0800df

    if-eqz v4, :cond_b

    .line 1187
    new-instance v6, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1188
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1189
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v2, 0x7f100007

    invoke-virtual {v6, v2, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    if-nez p11, :cond_2

    const v0, 0x7f100004

    const/16 v17, 0x1

    .line 1191
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/16 v17, 0x1

    .line 1193
    :goto_0
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mForOperations:I

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setId(I)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 1194
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 v2, 0x2

    .line 1195
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1196
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1197
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v0, 0x7f0800d8

    const/4 v4, 0x0

    .line 1198
    invoke-virtual {v6, v4, v4, v0, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1199
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v9, 0x11

    .line 1201
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 1202
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v24

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v26

    const/16 v18, 0x0

    move-object/from16 v28, v1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v29, v3

    move-object v3, v4

    move-object/from16 v30, v5

    const/4 v9, 0x0

    move-wide/from16 v4, v24

    move-object/from16 v32, v6

    move-object/from16 v31, v7

    move-wide/from16 v6, v26

    move v15, v8

    move-object/from16 v8, p5

    move-object/from16 v11, v21

    move-object/from16 v33, v23

    const v13, 0x7f100001

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V

    move-object/from16 v9, v32

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1204
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_5

    .line 1208
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1209
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->cropId:Ljava/lang/String;

    .line 1210
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

    if-eqz v0, :cond_3

    .line 1212
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v6, v30

    :try_start_1
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    move-object/from16 v6, v30

    .line 1215
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    move-object/from16 v6, v30

    .line 1218
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v6, v30

    .line 1221
    :goto_1
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    move-object/from16 v6, v30

    .line 1226
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

    .line 1229
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1227
    :cond_7
    :goto_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1233
    :goto_3
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 1242
    :cond_8
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKey(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v13, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1244
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1234
    :cond_9
    :goto_4
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v28

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1235
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKeyDefault(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v13, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1237
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1239
    :cond_a
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1246
    :goto_5
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v16

    const/4 v13, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v34, v6

    move-wide/from16 v6, v16

    const/4 v14, 0x1

    move-object/from16 v8, p5

    move-object v14, v9

    move-object v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_a

    :cond_b
    move-object/from16 v29, v3

    move-object/from16 v34, v5

    move-object/from16 v31, v7

    move v15, v8

    move-object/from16 v11, v21

    move-object/from16 v14, v23

    const v13, 0x7f100001

    move-object v7, v1

    .line 1248
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1250
    new-instance v8, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 1251
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1252
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1253
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v8, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1254
    iget v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mForOperations:I

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setId(I)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 1255
    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 v7, 0x2

    .line 1256
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1257
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1258
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1259
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v9, 0x11

    .line 1260
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800d8

    .line 1261
    invoke-virtual {v8, v6, v6, v1, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1263
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1264
    new-instance v4, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v16

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v21

    const/16 v18, 0x0

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v13, v4

    move-wide/from16 v4, v16

    move-wide/from16 v6, v21

    move-object/from16 v33, v14

    move-object v14, v8

    move-object/from16 v8, p5

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V

    invoke-virtual {v14, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1267
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6

    .line 1270
    :cond_c
    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    :cond_d
    :goto_6
    :try_start_2
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v0, :cond_13

    if-eqz p7, :cond_e

    .line 1278
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    .line 1279
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->farmerId:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityAssignmentId:I

    iget-wide v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->transId:J

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry_byIds(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJ)Ljava/lang/String;

    move-result-object v0

    .line 1278
    invoke-virtual {v7, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->brandsList:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    .line 1281
    :try_start_4
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    .line 1285
    :cond_e
    :try_start_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    .line 1286
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->farmerId:Ljava/lang/String;

    iget v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityAssignmentId:I

    iget-wide v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->transId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry_Pairid(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1285
    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->brandsList:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 1288
    :try_start_6
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1293
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1296
    :goto_8
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_11

    .line 1298
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandSelected()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 1299
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->brandsList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->brandsList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_f

    .line 1302
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    :cond_f
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1311
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1314
    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v14, v1, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_9

    .line 1319
    :cond_12
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1322
    :cond_13
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    .line 1326
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1328
    :goto_9
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/4 v9, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_a
    move-object/from16 v21, v11

    move-object v11, v12

    move-object v0, v14

    move v3, v15

    move-object/from16 v36, v19

    move-object/from16 v37, v20

    const/16 v1, 0xa

    move/from16 v12, p3

    goto/16 :goto_1f

    :cond_14
    move-object/from16 v33, v14

    .line 1330
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v13, "0"

    if-eqz v1, :cond_18

    .line 1331
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    .line 1332
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1333
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1334
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mForDates:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 1335
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1336
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1337
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1338
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1339
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setGravity(I)V

    .line 1340
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1341
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1342
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1343
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v16

    const/16 v18, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-wide/from16 v6, v16

    const/4 v14, 0x0

    move-object/from16 v8, p5

    move-object v14, v9

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1345
    :try_start_7
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->cropId:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->cropId:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1346
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->farmerId:Ljava/lang/String;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->cropId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->dos:Ljava/lang/String;

    .line 1348
    :cond_15
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->dos:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    .line 1349
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->dos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 1350
    :cond_16
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

    .line 1351
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 1353
    :cond_17
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    .line 1356
    const-string v1, "Attribute"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    move-object/from16 v21, v11

    move-object v11, v12

    move v3, v15

    move-object/from16 v36, v19

    move-object/from16 v37, v20

    goto/16 :goto_e

    :cond_18
    move-object/from16 v14, v20

    .line 1358
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1359
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 1360
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1361
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1362
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1363
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1364
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1365
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1366
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1367
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 1368
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    new-array v2, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v6, v2, v1

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1369
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    new-instance v8, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v17

    const/16 v20, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v35, v7

    move-wide/from16 v6, v17

    move-object/from16 v17, v14

    move-object v14, v8

    move-object/from16 v8, p5

    move-object/from16 v21, v11

    const/16 v11, 0x11

    move-object/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1371
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, v35

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1372
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

    goto :goto_c

    .line 1375
    :cond_19
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1373
    :cond_1a
    :goto_c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1378
    :cond_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_d
    move-object v11, v12

    move v3, v15

    move-object/from16 v37, v17

    move-object/from16 v36, v19

    :goto_e
    const/16 v1, 0xa

    move/from16 v12, p3

    goto/16 :goto_1e

    :cond_1c
    move-object/from16 v21, v11

    move-object/from16 v17, v14

    move-object/from16 v8, v19

    const/16 v11, 0x11

    move-object v14, v7

    .line 1380
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v7, "@"

    if-eqz v1, :cond_23

    .line 1381
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 1382
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1383
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1384
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1385
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1386
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1387
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1388
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1389
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setGravity(I)V

    .line 1391
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1393
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v18

    const/16 v20, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v11, v7

    move-wide/from16 v6, v18

    move-object/from16 v36, v8

    move-object/from16 v8, p5

    move-object v12, v9

    move-object/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1395
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

    goto :goto_f

    .line 1398
    :cond_1d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    :cond_1e
    :goto_f
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1401
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

    goto :goto_10

    .line 1404
    :cond_1f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 1402
    :cond_20
    :goto_10
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 1407
    :cond_21
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    const/16 v0, 0x355

    move/from16 v12, p3

    move-object/from16 v8, v17

    if-ne v12, v0, :cond_22

    .line 1412
    :try_start_8
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    .line 1413
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->lookupdata:[[Ljava/lang/String;

    add-int/lit8 v1, v15, -0x1

    aget-object v0, v0, v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 1415
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v2

    .line 1417
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->selectedCropID:Ljava/lang/String;

    invoke-virtual {v2, v11, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1418
    invoke-virtual {v2, v11, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1419
    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->lookupdata_lineIds:[[Ljava/lang/String;

    aget-object v1, v2, v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1420
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    .line 1421
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_12

    :catch_6
    move-exception v0

    .line 1433
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    :goto_12
    move-object/from16 v11, p2

    move-object/from16 v37, v8

    goto/16 :goto_15

    :cond_23
    move/from16 v12, p3

    move-object v11, v7

    move-object/from16 v36, v8

    move-object/from16 v8, v17

    .line 1437
    const-string v1, "TextBoxND"

    move-object/from16 v7, p2

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1438
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 1439
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1440
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1441
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1442
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1443
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1444
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1445
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1446
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1448
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1450
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    new-instance v11, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v17

    const/4 v9, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    move-wide/from16 v6, v17

    move-object/from16 v37, v8

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1452
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1453
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

    goto :goto_13

    .line 1456
    :cond_24
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 1454
    :cond_25
    :goto_13
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 1459
    :cond_26
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    :goto_14
    move-object/from16 v11, p2

    :goto_15
    move v3, v15

    :goto_16
    const/16 v1, 0xa

    goto/16 :goto_1e

    :cond_28
    move-object/from16 v37, v8

    .line 1461
    const-string v1, "TextBox"

    move-object/from16 v8, p2

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1462
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 1463
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1464
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1465
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1466
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1467
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1468
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1469
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1470
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 1471
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    new-array v2, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v6, v2, v1

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1472
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x20001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1473
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v17

    const/16 v19, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v20, v6

    move-wide/from16 v6, v17

    move-object/from16 v8, p5

    move-object/from16 v17, v11

    move-object v11, v9

    move-object/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v0, 0x15

    if-eq v12, v0, :cond_29

    const/16 v0, 0x14

    if-ne v12, v0, :cond_2a

    .line 1476
    :cond_29
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationFlag:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationFlag:I

    .line 1479
    :cond_2a
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_17

    .line 1482
    :cond_2b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

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

    goto :goto_18

    :cond_2c
    :goto_17
    const/4 v3, 0x1

    .line 1480
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/utils/UtilDeclarations$DecimalDigitsInputFilter;

    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations$DecimalDigitsInputFilter;-><init>(II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1485
    :goto_18
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1486
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

    goto :goto_19

    .line 1489
    :cond_2d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1487
    :cond_2e
    :goto_19
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1492
    :cond_2f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1a
    const/16 v0, 0x355

    if-ne v12, v0, :cond_27

    .line 1497
    :try_start_9
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    .line 1498
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->lookupdata:[[Ljava/lang/String;

    add-int/lit8 v1, v15, -0x1

    aget-object v0, v0, v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 1500
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v2

    .line 1502
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->selectedCropID:Ljava/lang/String;

    move-object/from16 v4, v17

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1503
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1504
    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->lookupdata_lineIds:[[Ljava/lang/String;

    aget-object v1, v2, v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1505
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    .line 1506
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_14

    :catch_7
    move-exception v0

    .line 1518
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 1523
    :cond_30
    const-string v1, "NumberBox"

    move-object/from16 v11, p2

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1524
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 1525
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1526
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1527
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1528
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1529
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1530
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1531
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1532
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1534
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1535
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1536
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v17, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v8, p5

    move-object v15, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1537
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1538
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_31

    goto :goto_1b

    .line 1541
    :cond_31
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    .line 1539
    :cond_32
    :goto_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    .line 1544
    :cond_33
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    .line 1546
    :cond_34
    const-string v1, "Label"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1547
    new-instance v1, Landroid/widget/EditText;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v3, 0x1

    .line 1548
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1549
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1550
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1551
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1552
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1553
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f100007

    invoke-virtual {v1, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1554
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const v2, 0x7f0800e0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1555
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 1556
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1559
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_1c

    .line 1562
    :cond_35
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    .line 1560
    :cond_36
    :goto_1c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_1d

    .line 1564
    :cond_37
    const-string v0, "image"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1565
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f080090

    .line 1567
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1568
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "###"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1569
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1570
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1571
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1573
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_38

    .line 1575
    new-instance v0, Ljava/io/File;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1577
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1578
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1579
    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1582
    :cond_38
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mImageviews:Ljava/util/List;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1583
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$3;

    invoke-direct {v2, v10, v12}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$3;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1e

    :cond_39
    :goto_1d
    move/from16 v3, p9

    goto/16 :goto_16

    :goto_1e
    const/4 v0, 0x0

    .line 1599
    :goto_1f
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1608
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1609
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1610
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v8, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityId:I

    invoke-virtual {v7, v12, v8}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v5

    const/high16 v8, 0x3f000000    # 0.5f

    const/16 v9, 0x64

    const/4 v13, -0x1

    if-eqz v5, :cond_3a

    .line 1611
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v14, 0x3ee66666    # 0.45f

    invoke-direct {v5, v13, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v14, 0x11

    .line 1612
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1613
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const v15, 0x3f19999a    # 0.6f

    const/4 v7, -0x2

    invoke-direct {v14, v13, v7, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1614
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v13, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1615
    iput v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1616
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v15, v13, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0x30

    .line 1617
    iput v1, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1618
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v13, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v8, 0xa

    .line 1619
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1620
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v13, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1621
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f070177

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-direct {v8, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1622
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v9, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 1623
    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_20

    :cond_3a
    const/4 v7, -0x2

    .line 1626
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3ee66666    # 0.45f

    const/4 v13, -0x1

    invoke-direct {v5, v13, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0x11

    .line 1627
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1628
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v13, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1629
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v13, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1631
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v8, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v13, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1633
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v15, v13, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1634
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v13, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1635
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f070177

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-direct {v8, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1636
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v9, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_20
    move-object/from16 v1, p4

    move-object/from16 v13, v29

    .line 1638
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v7, v34

    .line 1639
    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1640
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1641
    const-string v2, "NumberBox"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1642
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_21
    move-object/from16 v4, v21

    move-object/from16 v2, v33

    :goto_22
    move-object/from16 v5, v36

    move-object/from16 v1, v37

    :cond_3b
    :goto_23
    const/4 v6, 0x1

    goto/16 :goto_25

    .line 1643
    :cond_3c
    const-string v2, "DropDown"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    if-nez p11, :cond_3d

    .line 1644
    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_21

    .line 1645
    :cond_3d
    const-string v2, "DropDown"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1646
    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_21

    :cond_3e
    move-object/from16 v2, v33

    .line 1647
    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1648
    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_24
    move-object/from16 v4, v21

    goto :goto_22

    .line 1649
    :cond_3f
    const-string v4, "TextBox"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1650
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    :cond_40
    move-object/from16 v4, v21

    .line 1651
    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1652
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    .line 1653
    :cond_41
    const-string v6, "Label"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 1654
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    .line 1655
    :cond_42
    const-string v1, "image"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1656
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    :cond_43
    move-object/from16 v1, v37

    .line 1657
    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 1658
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v5, v36

    goto :goto_23

    :cond_44
    move-object/from16 v5, v36

    .line 1659
    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 1660
    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_23

    .line 1661
    :cond_45
    const-string v6, "TextBoxND"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 1662
    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_23

    :goto_25
    if-ne v3, v6, :cond_46

    move-object/from16 v6, v31

    .line 1665
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    :cond_46
    move-object/from16 v6, v31

    .line 1666
    :goto_26
    const-string v8, "NumberBox"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 1667
    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_47
    :goto_27
    const/4 v8, 0x1

    goto/16 :goto_28

    .line 1668
    :cond_48
    const-string v8, "DropDown"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 1669
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1670
    :cond_49
    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 1671
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1672
    :cond_4a
    const-string v8, "TextBox"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 1673
    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1674
    :cond_4b
    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 1675
    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1676
    :cond_4c
    const-string v8, "Label"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 1677
    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1678
    :cond_4d
    const-string v8, "image"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 1679
    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1680
    :cond_4e
    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 1681
    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1682
    :cond_4f
    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 1683
    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1684
    :cond_50
    const-string v8, "TextBoxND"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 1685
    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    :goto_28
    if-ne v3, v8, :cond_51

    .line 1688
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_52

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/EditText;

    if-eqz v3, :cond_52

    .line 1689
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v3

    if-ne v3, v8, :cond_52

    if-lez p11, :cond_52

    .line 1690
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-direct {v10, v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_29

    :cond_51
    const/4 v3, 0x0

    .line 1693
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_52

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/EditText;

    if-eqz v8, :cond_52

    .line 1694
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_52

    if-lez p11, :cond_52

    .line 1695
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-direct {v10, v8}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1698
    :cond_52
    :goto_29
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v9, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityId:I

    invoke-virtual {v8, v12, v9}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_53

    .line 1699
    new-instance v3, Landroid/widget/Button;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1701
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1702
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0801d2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1703
    invoke-virtual {v3, v15}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1704
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1706
    new-instance v8, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$4;

    invoke-direct {v8, v10}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$4;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1727
    :cond_53
    iget v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationFlag:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_54

    .line 1728
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v9, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationLayout:Landroid/widget/LinearLayout;

    .line 1729
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1732
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v8, v5

    goto/16 :goto_2a

    :cond_54
    const/4 v8, 0x2

    if-ne v3, v8, :cond_55

    .line 1736
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1737
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 1738
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x10

    .line 1739
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1740
    iget v6, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->layoutId:I

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1742
    new-instance v6, Landroid/widget/TextView;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v8, -0xbbbbbc

    .line 1743
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, 0x4

    .line 1745
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1746
    invoke-virtual {v3, v6, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1747
    new-instance v6, Landroid/widget/Button;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    .line 1748
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_getButton()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1749
    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    move-object v8, v5

    move-object/from16 v5, p1

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1750
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setGravity(I)V

    .line 1751
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 1752
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f0800c6

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1753
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v9, 0x3ee66666    # 0.45f

    const/4 v13, -0x2

    invoke-direct {v5, v6, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v6, 0xa

    .line 1754
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1755
    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1756
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1757
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v5, p6

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    .line 1759
    iput v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationFlag:I

    .line 1760
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationBtn:Landroid/widget/Button;

    new-instance v5, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$5;

    invoke-direct {v5, v10}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$5;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2a

    :cond_55
    move-object v8, v5

    move-object/from16 v5, p6

    .line 1770
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1771
    invoke-virtual {v5, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1774
    :goto_2a
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1775
    const-string v3, "NumberBox"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1776
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1777
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    move-object/from16 v3, p8

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2b

    :cond_56
    move-object/from16 v3, p8

    .line 1778
    const-string v5, "TextBox"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1779
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1780
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2b

    .line 1781
    :cond_57
    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1782
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1783
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2b

    .line 1784
    :cond_58
    const-string v1, "TextBoxND"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1785
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1786
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2b

    .line 1787
    :cond_59
    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1788
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1789
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2b

    .line 1790
    :cond_5a
    const-string v1, "DropDown"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1791
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1792
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 1793
    :cond_5b
    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1794
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1795
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 1796
    :cond_5c
    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1797
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1798
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 1799
    :cond_5d
    const-string v0, "Label"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1800
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1801
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 1802
    :cond_5e
    const-string v0, "image"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1803
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1804
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1805
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1806
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    :cond_5f
    :goto_2b
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->layoutId:I

    return-void
.end method

.method public getDataAndUpdateUi()V
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->init()V

    .line 244
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 245
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getData(Landroid/os/Bundle;)V

    .line 246
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setListeners()V

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isLoadingDone:Z

    return-void
.end method

.method public isDataValid()Z
    .locals 21

    move-object/from16 v1, p0

    .line 479
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 480
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pestCotrolList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 485
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setsData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 486
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 487
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 526
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 528
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 529
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    .line 531
    new-instance v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v9, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 536
    :try_start_0
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v10, "0"

    const-string v14, "TextBoxN"

    const-string v15, " - "

    const-string v11, "TextBoxND"

    const-string v12, " "

    const-string v13, ""

    const/16 v18, 0x0

    if-ne v0, v3, :cond_6

    .line 537
    :try_start_1
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v0, :cond_0

    .line 540
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_9

    .line 542
    :cond_0
    :try_start_3
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ge v0, v3, :cond_1

    .line 545
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    .line 547
    :goto_2
    :try_start_5
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v3, :cond_2

    .line 549
    :try_start_6
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 553
    :catch_1
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 556
    :cond_2
    :goto_3
    :try_start_8
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 557
    :cond_3
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v19

    const-wide/16 v16, 0x0

    cmp-long v3, v19, v16

    if-eqz v3, :cond_5

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v16
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    cmp-long v3, v10, v16

    if-gez v3, :cond_5

    .line 560
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :cond_5
    if-eqz v0, :cond_d

    const/4 v3, 0x0

    .line 565
    :try_start_a
    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 571
    :cond_6
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    .line 572
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    if-ge v0, v3, :cond_7

    .line 575
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    const/4 v0, 0x1

    .line 577
    :goto_4
    :try_start_c
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    if-eqz v3, :cond_8

    .line 579
    :try_start_d
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_5

    .line 583
    :catch_2
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 586
    :cond_8
    :goto_5
    :try_start_f
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 587
    :cond_9
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v19

    const-wide/16 v16, 0x0

    cmp-long v3, v19, v16

    if-eqz v3, :cond_b

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_a
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v16
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    cmp-long v3, v10, v16

    if-gez v3, :cond_b

    .line 590
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :cond_b
    if-eqz v0, :cond_d

    const/4 v3, 0x0

    .line 594
    :try_start_11
    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    const/4 v0, 0x1

    :cond_d
    :goto_6
    if-eqz v0, :cond_13

    .line 609
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DropDown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    const v3, 0x7f100001

    const-string v10, "."

    if-eqz v0, :cond_f

    .line 610
    :try_start_12
    invoke-virtual {v8, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 611
    invoke-virtual {v8, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_7

    .line 613
    :cond_e
    invoke-virtual {v9, v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 614
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 616
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 617
    :cond_f
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v11, "Multiselect Dropdown"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 619
    invoke-virtual {v8, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 620
    invoke-virtual {v8, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 621
    array-length v3, v0

    if-lez v3, :cond_10

    .line 622
    array-length v3, v0

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v3, :cond_13

    aget-object v12, v0, v11

    .line 623
    new-instance v13, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v13, v14}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 624
    invoke-virtual {v13, v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 625
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 626
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 627
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 630
    :cond_10
    invoke-virtual {v9, v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 633
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 636
    :cond_11
    invoke-virtual {v9, v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 639
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 643
    :cond_12
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 646
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    .line 650
    :goto_9
    const-string v3, "ChildAttributeFragment"

    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 667
    :cond_13
    :goto_a
    :try_start_13
    invoke-virtual {v8}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 668
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    .line 669
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v3, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;

    invoke-direct {v3, v1, v8}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto :goto_b

    :catch_4
    nop

    :cond_14
    :goto_b
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_15
    move v0, v6

    goto/16 :goto_0

    :cond_16
    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 284
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 218
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 219
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mActivity:Landroid/app/Activity;

    .line 221
    :try_start_0
    check-cast p1, Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    const-string v0, "android.intent.action.GPSTurnedOnResult"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$LocalBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$LocalBroadcastReceiver;

    .line 228
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2242
    :cond_0
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDay:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 234
    iget-object p3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 235
    iput p3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setCount:I

    const v0, 0x7f0c0071

    .line 236
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->rootView:Landroid/view/View;

    .line 237
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getDataAndUpdateUi()V

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onCropchangeListener(I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2045
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->farmerId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->dos:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2046
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mDatetext:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->dos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2050
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 258
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 259
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setsData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 260
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 2160
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Longitude"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2161
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2162
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2163
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2164
    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 2165
    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 2166
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 2167
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2168
    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 2169
    check-cast v7, Landroid/widget/EditText;

    .line 2170
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2171
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

    .line 2172
    :cond_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2173
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

    .line 2184
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->locationView:Landroid/view/View;

    return-void
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 308
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 271
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 265
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 252
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

    .line 824
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_9

    move-object/from16 v6, p1

    .line 825
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 847
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

    .line 848
    :try_start_1
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

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

    .line 851
    :try_start_2
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

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

    .line 853
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

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

    .line 856
    :try_start_4
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

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

    .line 858
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-eqz v16, :cond_3

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

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

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

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

    .line 861
    :try_start_6
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

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

    .line 864
    :try_start_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 869
    :cond_4
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

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

    .line 870
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

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

    .line 873
    :try_start_8
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

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

    .line 875
    :goto_3
    :try_start_9
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-eqz v16, :cond_7

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

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

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

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

    .line 878
    :try_start_a
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

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

    .line 881
    :try_start_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 887
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

    .line 1072
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    monitor-enter p0

    .line 1075
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1076
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    if-eqz p2, :cond_3

    .line 1078
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1080
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

    .line 1082
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSequenceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1083
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    if-ne v2, p3, :cond_1

    .line 1084
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 1085
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

    .line 1093
    :cond_3
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1076
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public prepareDataDraft()V
    .locals 12

    .line 733
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 735
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setsData:Ljava/util/Map;

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

    .line 736
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 737
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 739
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

    .line 740
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 741
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 743
    new-instance v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v5, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 756
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

    .line 757
    :try_start_1
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 758
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_1

    .line 760
    :cond_2
    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 761
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

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

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 763
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 764
    :cond_3
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    const-string v10, "Multiselect Dropdown"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 766
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 767
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 768
    array-length v6, v3

    if-lez v6, :cond_4

    .line 769
    array-length v6, v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_1

    aget-object v8, v3, v7

    .line 770
    new-instance v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v11, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v10, v11}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 771
    invoke-virtual {v10, v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 772
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

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

    .line 773
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 774
    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 777
    :cond_4
    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

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

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 780
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 783
    :cond_5
    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

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

    .line 785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 786
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 790
    :cond_6
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

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

    .line 792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 793
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .line 796
    const-string v4, "ChildAttributeFragment"

    invoke-static {v4, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public testMethod(I)V
    .locals 12

    if-nez p1, :cond_0

    .line 464
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityAssignmentId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->parentAttributeId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsChildActivityFromTable(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 465
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityId:I

    iget-wide v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->transId:J

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->parentAttributeId:I

    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsChildActivityFromTableSA(Ljava/lang/String;IJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->insertListAttributes:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->farmerId:Ljava/lang/String;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isPlanned:I

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->assignmentID:I

    iget v8, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->segmentId:I

    iget-wide v9, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->transId:J

    iget v11, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->activityAssignmentId:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v11}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsWithSequenceId(Ljava/util/List;Ljava/lang/String;IIIIIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 468
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

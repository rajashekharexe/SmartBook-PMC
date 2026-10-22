.class public Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;
.super Landroidx/fragment/app/Fragment;
.source "ChildAttributesFragmentVertical.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/CropChanger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$LocalBroadcastReceiver;,
        Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$SingleTapConfirm;,
        Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$CustomTextWatcher;,
        Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$NumericDigitsInputFilter;
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

.field private mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$LocalBroadcastReceiver;

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

.field private productList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ProductAndDistributorData;",
            ">;"
        }
    .end annotation
.end field

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

    .line 209
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 112
    const-string v0, "ChildAttributeFragment"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setCount:I

    .line 118
    const-string v1, "0"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->farmerId:Ljava/lang/String;

    .line 120
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationFlag:I

    .line 124
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->datePos:I

    .line 129
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mFiledStr:Ljava/lang/String;

    const/4 v1, -0x1

    .line 137
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mForOperations:I

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mForDates:I

    .line 138
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->layoutId:I

    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->childValuelistAttributes:Ljava/util/List;

    .line 156
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->brandsList:Ljava/util/List;

    .line 158
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->countVillage:I

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->villageDetails:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeMap:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setsData:Ljava/util/Map;

    const/4 v0, 0x1

    .line 193
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->ATTRIBUTEID_TAG:I

    const/4 v0, 0x2

    .line 194
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->SETID_TAG:I

    const/4 v0, 0x3

    .line 195
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->ENTRYID_TAG:I

    .line 1594
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$8;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->operationListener:Landroid/view/View$OnClickListener;

    .line 1690
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$9;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 1810
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$10;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$10;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    .line 1964
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$12;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->datesListener:Landroid/view/View$OnClickListener;

    .line 1996
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$14;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$14;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->farmerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->findCurrentLocation()V

    return-void
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Ljava/util/HashMap;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeHashmap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Ljava/util/Map;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setsData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Ljava/util/List;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->listAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Ljava/util/List;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArrIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Ljava/util/List;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->AlertlistAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->parentAttributeId:I

    return p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->ismba:I

    return p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Landroid/widget/ImageView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->dateSelectedEdit:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mYear:I

    return p0
.end method

.method static synthetic access$2502(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mYear:I

    return p1
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mMonth:I

    return p0
.end method

.method static synthetic access$2602(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mMonth:I

    return p1
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDay:I

    return p0
.end method

.method static synthetic access$2702(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDay:I

    return p1
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->updateDisplay()V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;I)Ljava/util/List;
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->filterAttributesByFilterAttribute(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Landroid/widget/LinearLayout;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->addvillageLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Landroid/view/GestureDetector;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->inDragMode:Z

    return p0
.end method

.method static synthetic access$3102(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->inDragMode:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->initX:I

    return p0
.end method

.method static synthetic access$3202(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->initX:I

    return p1
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->initY:I

    return p0
.end method

.method static synthetic access$3302(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->initY:I

    return p1
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->initViewX:I

    return p0
.end method

.method static synthetic access$3402(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->initViewX:I

    return p1
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->initViewY:I

    return p0
.end method

.method static synthetic access$3502(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->initViewY:I

    return p1
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->newX:I

    return p0
.end method

.method static synthetic access$3602(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->newX:I

    return p1
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->newY:I

    return p0
.end method

.method static synthetic access$3702(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->newY:I

    return p1
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->screenWidth:I

    return p0
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->screenHight:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;ILandroid/widget/LinearLayout;Ljava/util/Map;ZZ)V
    .locals 0

    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;ZZ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Landroid/widget/ImageView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->globalView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;Landroid/widget/ImageView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->updateViews(Landroid/widget/ImageView;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->refreshSetViews(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Landroid/content/Context;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityId:I

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->assignmentID:I

    return p0
.end method

.method private addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;ZZ)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    .line 787
    new-instance v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeMap:Ljava/util/Map;

    .line 791
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 792
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

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

    .line 796
    :cond_0
    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 797
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v0, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 798
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 800
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 803
    iget v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->layoutId:I

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 808
    new-instance v10, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;

    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 809
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 810
    invoke-virtual {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, -0xbbbbbc

    .line 815
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    new-instance v9, Landroid/widget/ImageView;

    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0800cb

    .line 819
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 822
    iget v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 824
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    .line 825
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 830
    invoke-virtual {v10, v9}, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 832
    iget v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v8, 0x0

    .line 834
    :goto_0
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "."

    const-string v2, ""

    if-ge v8, v0, :cond_6

    .line 837
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 839
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->childValuelistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p4, :cond_1

    .line 840
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->childValuelistAttributes:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v11, v0, v1, v3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->performFiltering(Ljava/util/List;Ljava/lang/String;I)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v0

    .line 841
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

    .line 843
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 854
    :goto_1
    iget-object v1, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeHashmap:Ljava/util/HashMap;

    iget-object v3, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 855
    iget-object v1, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeHashmap:Ljava/util/HashMap;

    iget-object v3, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v12, :cond_4

    .line 859
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 860
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    move-object v4, v0

    .line 864
    :goto_3
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    if-eqz v12, :cond_5

    .line 867
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    iget-object v5, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v7, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeMap:Ljava/util/Map;

    iget v6, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setCount:I

    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v18, v6

    move-object v6, v13

    move-object/from16 v19, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move-object/from16 v8, v19

    move-object/from16 v20, v9

    move/from16 v9, v18

    move-object v14, v10

    move/from16 v10, v16

    invoke-virtual/range {v0 .. v10}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;II)V

    goto :goto_4

    :cond_5
    move/from16 v17, v8

    move-object/from16 v20, v9

    move-object v14, v10

    .line 869
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    iget-object v5, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v8, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeMap:Ljava/util/Map;

    iget v9, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setCount:I

    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v6, v13

    invoke-virtual/range {v0 .. v10}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;II)V

    :goto_4
    add-int/lit8 v8, v17, 0x1

    move-object v10, v14

    move-object/from16 v9, v20

    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v20, v9

    move-object v14, v10

    .line 872
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 875
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setsData:Ljava/util/Map;

    iget v3, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeMap:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 877
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v3, p2

    .line 879
    invoke-virtual {v3, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v12, :cond_7

    if-eqz p4, :cond_7

    .line 881
    iget-object v0, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->childValuelistAttributes:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v11, v0, v1, v3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->performFiltering(Ljava/util/List;Ljava/lang/String;I)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 883
    iget v1, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->parentAttributeId:I

    iget-object v2, v11, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->addvillageLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;ZZ)V

    .line 888
    :cond_7
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$3;

    invoke-direct {v0, v11}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$3;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addFView()V
    .locals 8

    .line 2170
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->windowManager:Landroid/view/WindowManager;

    .line 2171
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2172
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2173
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->screenWidth:I

    .line 2174
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->screenHight:I

    const/4 v0, 0x0

    .line 2175
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->inDragMode:Z

    .line 2176
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->globalView:Landroid/widget/ImageView;

    const v1, 0x7f080061

    .line 2177
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2178
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    const/16 v2, 0x32

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v4

    const/16 v6, 0x8

    const/4 v7, -0x3

    const/16 v5, 0x7d2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x55

    .line 2179
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0xf

    .line 2180
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0x78

    .line 2181
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2182
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->globalView:Landroid/widget/ImageView;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$15;

    invoke-direct {v2, p0, v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$15;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2226
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->globalView:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private captureImage(ILjava/lang/String;)V
    .locals 4

    .line 1942
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1943
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

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageFile:Ljava/io/File;

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 1945
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->image1Path:Ljava/lang/String;

    .line 1948
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.conceptglobal.pmcdeepakfertilizers.provider"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageFile:Ljava/io/File;

    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1954
    const-string v1, "output"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1956
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 1957
    const-string v2, ""

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v2, 0x3

    .line 1958
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1960
    :cond_1
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1961
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->startActivityForResult(Landroid/content/Intent;I)V

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

    .line 773
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 774
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 775
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

    .line 2115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2117
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeHashmap:Ljava/util/HashMap;

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

    .line 2118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2119
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2120
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

    .line 2123
    const-string v1, "ChildAttributeFragment"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_2
    return-object v0
.end method

.method private findCurrentLocation()V
    .locals 5

    .line 1821
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1822
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1825
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$11;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$11;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    const-string v3, "ChildAttributeFragment"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1841
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData(Landroid/os/Bundle;)V
    .locals 7

    .line 306
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->ismba:I

    .line 307
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->farmerId:Ljava/lang/String;

    .line 308
    const-string v0, "ISSELFASSIGN"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->isSelfassign:I

    .line 309
    const-string v0, "SEGMENTID"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->segmentId:I

    .line 310
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityId:I

    .line 311
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->isPlanned:I

    .line 312
    const-string v0, "ParentAttributeId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->parentAttributeId:I

    .line 313
    const-string v0, "ActivityAssignmentId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityAssignmentId:I

    .line 314
    const-string v0, "TRANSID"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->transId:J

    .line 315
    const-string v0, "Count"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->countVillage:I

    .line 316
    const-string v0, "pairId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    .line 317
    const-string v0, "AssignmentId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->assignmentID:I

    .line 318
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->parentAttributeId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityAssignmentId:I

    iget-wide v5, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->transId:J

    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getChildValuesAttributeQueryUpdate(Ljava/lang/String;IIIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->childValuelistAttributes:Ljava/util/List;

    .line 319
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->parentAttributeId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getSelectedAttributeQueryUpdate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->AlertlistAttributes:Ljava/util/List;

    .line 320
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->childValuelistAttributes:Ljava/util/List;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->listAttributes:Ljava/util/List;

    .line 321
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    .line 322
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDay:I

    const/4 v0, 0x2

    .line 323
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mMonth:I

    const/4 v0, 0x1

    .line 324
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mYear:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 326
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->rootView:Landroid/view/View;

    const v1, 0x7f0905f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->addvillageLayout:Landroid/widget/LinearLayout;

    .line 281
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->rootView:Landroid/view/View;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->btnAdd:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 282
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->rootView:Landroid/view/View;

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->btnfinish:Landroid/widget/Button;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->productList:Ljava/util/List;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    .line 287
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    .line 288
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 289
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArrIds:Ljava/util/List;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->insertListAttributes:Ljava/util/List;

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeHashmap:Ljava/util/HashMap;

    .line 293
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$SingleTapConfirm;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$SingleTapConfirm;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->gestureDetector:Landroid/view/GestureDetector;

    .line 295
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->addvillageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    new-instance v0, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    return-void
.end method

.method private refreshSetViews(I)V
    .locals 10

    .line 903
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setsData:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 905
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setsData:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, -0x1

    .line 906
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mForOperations:I

    .line 907
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mForDates:I

    const/4 v0, 0x0

    .line 908
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setCount:I

    .line 909
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->addvillageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 910
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 911
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 912
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setsData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 913
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 914
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

    .line 916
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 917
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 918
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

    .line 921
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeHashmap:Ljava/util/HashMap;

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

    .line 922
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 923
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

    .line 925
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v9, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 927
    :cond_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeHashmap:Ljava/util/HashMap;

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

    .line 928
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 929
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

    .line 931
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v9, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 933
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

    .line 937
    :cond_4
    iget v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->parentAttributeId:I

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->addvillageLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;ZZ)V

    add-int/lit8 v0, v0, 0x1

    .line 938
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .line 941
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 2020
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->dateSelectedEdit:Landroid/widget/EditText;

    .line 2021
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2023
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2025
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2027
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2028
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 1587
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1588
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1589
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1590
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setListeners()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 331
    :goto_0
    iget v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->countVillage:I

    if-ge v1, v2, :cond_1

    .line 332
    iget v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->parentAttributeId:I

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->addvillageLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->childValuelistAttributes:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->btnAdd:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$1;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->btnfinish:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$2;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1577
    const-string v0, "."

    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

    if-eqz v1, :cond_0

    .line 1578
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

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

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

    .line 1581
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1582
    const-string p2, "ChildAttributeFragment"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 1977
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1978
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

    new-instance v2, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$13;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$13;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1984
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 2033
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mFiledStr:Ljava/lang/String;

    .line 2034
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2036
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2038
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2040
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setDate(I)V

    return-void
.end method

.method private updateViews(Landroid/widget/ImageView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 2230
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;II)V
    .locals 34
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

    move/from16 v8, p9

    .line 979
    iget v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mForOperations:I

    const/4 v6, 0x1

    add-int/2addr v1, v6

    iput v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mForOperations:I

    .line 980
    iget v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mForDates:I

    add-int/2addr v1, v6

    iput v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mForDates:I

    .line 981
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 985
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 986
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v2, p10

    int-to-float v2, v2

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 987
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 989
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x5

    .line 990
    invoke-virtual {v7, v4, v4, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 991
    iget v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->layoutId:I

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 996
    new-instance v3, Landroid/widget/TextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, -0xbbbbbc

    .line 997
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 998
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1000
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x0

    .line 1007
    iput-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    .line 1011
    new-instance v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$4;

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$4;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    .line 1035
    new-instance v2, Landroid/widget/EditText;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1036
    const-string v5, "Dropdown"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v9, "NumberBox"

    move-object/from16 v16, v9

    const-string v9, "TextBox"

    move-object/from16 v17, v9

    const-string v9, "TextBoxND"

    const-string v6, "ChildAttributeFragment"

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

    const/4 v4, 0x2

    if-eqz v5, :cond_9

    .line 1037
    new-instance v5, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1038
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v5, v1, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1039
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f100007

    invoke-virtual {v5, v1, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1040
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mForOperations:I

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setId(I)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 1041
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setTextSize(F)V

    const v0, 0x7f0800dc

    .line 1043
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v0, 0x7f0800d7

    const/4 v1, 0x0

    .line 1044
    invoke-virtual {v5, v1, v1, v0, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1045
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    move-object/from16 v24, v7

    const/16 v7, 0x11

    .line 1047
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 1048
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1049
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1051
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    .line 1055
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

    .line 1056
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->cropId:Ljava/lang/String;

    .line 1057
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/common/Queries;->getCropNameQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1059
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1062
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1065
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1068
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1073
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

    .line 1076
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1074
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

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1080
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

    .line 1089
    :cond_6
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKey(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100001

    .line 1090
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1091
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1081
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

    .line 1082
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKeyDefault(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100001

    .line 1083
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1084
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1086
    :cond_8
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1093
    :goto_3
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v25

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v27

    const/4 v9, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v6, v2

    move-object/from16 v2, p0

    move-object/from16 v29, v3

    move-object v3, v5

    move-object/from16 v30, v5

    move-wide/from16 v4, v25

    move-object/from16 v32, v6

    move-object/from16 v31, v24

    move-wide/from16 v6, v27

    move v14, v8

    move-object/from16 v8, p5

    move-object/from16 v11, v21

    move-object/from16 v15, v22

    move-object/from16 v13, v23

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$1;)V

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move/from16 v3, p3

    move-object/from16 v33, v11

    move v6, v14

    move-object/from16 v2, v17

    move-object/from16 v4, v20

    const/16 v5, 0xa

    move-object v14, v1

    move-object/from16 v1, v16

    goto/16 :goto_1e

    :cond_9
    move-object/from16 v32, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v7

    move v14, v8

    move-object/from16 v11, v21

    move-object/from16 v15, v22

    move-object/from16 v13, v23

    .line 1094
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1096
    new-instance v9, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    .line 1097
    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1098
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x7f100000

    invoke-virtual {v9, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1099
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v9, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1100
    iget v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mForOperations:I

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setId(I)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 1101
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setTextSize(F)V

    const v1, 0x7f0800dc

    .line 1102
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1103
    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v7, 0x11

    .line 1104
    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800d7

    .line 1105
    invoke-virtual {v9, v8, v8, v1, v8}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1107
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x2

    .line 1108
    invoke-virtual {v9, v5}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1109
    invoke-virtual {v9, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1111
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

    .line 1114
    :cond_a
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1117
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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v0, :cond_11

    if-eqz p7, :cond_c

    .line 1122
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    .line 1123
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->farmerId:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    iget v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityAssignmentId:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 p10, v6

    :try_start_3
    iget-wide v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->transId:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v18, v3

    move-object/from16 v3, p5

    move-object v7, v4

    move/from16 v4, v18

    move-object/from16 v8, p10

    move-object/from16 v23, v13

    const/4 v13, 0x2

    :try_start_4
    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry_byIds(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJ)Ljava/lang/String;

    move-result-object v0

    .line 1122
    invoke-virtual {v7, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->brandsList:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v8, p10

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v8, v6

    :goto_5
    move-object/from16 v23, v13

    const/4 v13, 0x2

    .line 1125
    :goto_6
    :try_start_5
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_7
    move-object/from16 v21, v11

    const/16 v11, 0x11

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v21, v11

    goto/16 :goto_b

    :cond_c
    move-object v8, v6

    move-object/from16 v23, v13

    const/4 v13, 0x2

    .line 1129
    :try_start_6
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    .line 1130
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->farmerId:Ljava/lang/String;

    iget v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityAssignmentId:I

    iget-wide v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->transId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-object/from16 v3, p5

    move-object v14, v7

    move-object/from16 v21, v11

    const/16 v11, 0x11

    move-object v7, v13

    :try_start_7
    invoke-virtual/range {v0 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry_Pairid(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    invoke-virtual {v14, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->brandsList:Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v21, v11

    const/16 v11, 0x11

    .line 1132
    :goto_8
    :try_start_8
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1137
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1140
    :goto_a
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->brandsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_f

    .line 1142
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->brandsList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandSelected()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1143
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->brandsList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->brandsList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_d

    .line 1146
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    :cond_d
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->brandsList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->brandsList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1155
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1158
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v9, v1, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_d

    .line 1163
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

    goto :goto_d

    :cond_11
    move-object v8, v6

    move-object/from16 v21, v11

    move-object/from16 v23, v13

    const/16 v11, 0x11

    .line 1166
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v8, v6

    move-object/from16 v21, v11

    move-object/from16 v23, v13

    :goto_b
    const/16 v11, 0x11

    .line 1170
    :goto_c
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1172
    :goto_d
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/4 v13, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v9

    const/4 v14, 0x0

    move-object/from16 v8, p5

    move-object v14, v9

    move-object v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$1;)V

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move/from16 v3, p3

    move/from16 v6, p9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v20

    move-object/from16 v33, v21

    const/16 v5, 0xa

    goto/16 :goto_1e

    :cond_12
    move-object/from16 v21, v11

    move-object/from16 v23, v13

    const/16 v11, 0x11

    .line 1174
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v13, "0"

    if-eqz v2, :cond_16

    .line 1175
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    .line 1176
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x7f100000

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1177
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1178
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mForDates:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 1179
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1180
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1181
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setGravity(I)V

    .line 1182
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1183
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1184
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1185
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1186
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1188
    :try_start_9
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->cropId:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->cropId:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1189
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->farmerId:Ljava/lang/String;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->cropId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->dos:Ljava/lang/String;

    .line 1191
    :cond_13
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->dos:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 1192
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->dos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1193
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

    .line 1194
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1196
    :cond_15
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_e

    :catch_9
    move-exception v0

    .line 1199
    const-string v1, "Attribute"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    move/from16 v3, p3

    move/from16 v6, p9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v20

    move-object/from16 v33, v21

    goto/16 :goto_11

    :cond_16
    move-object/from16 v8, v21

    const/4 v14, 0x1

    .line 1201
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1202
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    .line 1203
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1204
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/high16 v3, 0x7f100000

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1205
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f100007

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1206
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1207
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const v2, 0x7f0800dc

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1208
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setGravity(I)V

    .line 1209
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1210
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1211
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    new-array v3, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v1, v3, v2

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v3, v14

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1213
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1214
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

    goto :goto_f

    .line 1217
    :cond_17
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 1215
    :cond_18
    :goto_f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 1220
    :cond_19
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_10
    move/from16 v3, p3

    move/from16 v6, p9

    move-object/from16 v33, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v20

    :goto_11
    const/16 v5, 0xa

    goto/16 :goto_1d

    :cond_1a
    move-object/from16 v6, v20

    .line 1222
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1223
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 1224
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1225
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x7f100000

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1226
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1227
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1228
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1229
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setGravity(I)V

    .line 1230
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1231
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1232
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1233
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v14, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/utils/UtilDeclarations$NumericDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations$NumericDigitsInputFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1234
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    new-instance v7, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v20

    const/16 v18, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v22, v6

    move-object v11, v7

    move-wide/from16 v6, v20

    move-object/from16 v33, v8

    move-object/from16 v8, p5

    move-object v14, v9

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$1;)V

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1236
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

    goto :goto_12

    .line 1239
    :cond_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    :cond_1c
    :goto_12
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1242
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

    goto :goto_13

    .line 1245
    :cond_1d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 1243
    :cond_1e
    :goto_13
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 1248
    :cond_1f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    :cond_20
    move-object/from16 v22, v6

    move-object/from16 v33, v8

    move-object v14, v9

    move-object/from16 v11, v19

    .line 1250
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1251
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 1252
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1253
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x7f100000

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1254
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1255
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1256
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1257
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1258
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1259
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1260
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/16 v2, 0x2002

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1261
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$DecimalDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v4

    invoke-direct {v2, v10, v4, v1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;II)V

    const/4 v1, 0x0

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1262
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v18, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v8, p5

    move-object/from16 v19, v11

    move-object v11, v9

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$1;)V

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1264
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1265
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

    .line 1268
    :cond_21
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1266
    :cond_22
    :goto_14
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1271
    :cond_23
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    move/from16 v3, p3

    move/from16 v6, p9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v22

    goto/16 :goto_11

    :cond_24
    move-object/from16 v19, v11

    move-object/from16 v2, v17

    .line 1273
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1274
    new-instance v0, Landroid/widget/EditText;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    .line 1276
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/high16 v4, 0x7f100000

    invoke-virtual {v0, v4, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1277
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f100007

    invoke-virtual {v0, v4, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1278
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1279
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const v3, 0x7f0800dc

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1280
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 1281
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1282
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1283
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    new-array v4, v3, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v5

    invoke-direct {v3, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1284
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v0, 0x15

    move/from16 v3, p3

    move-object/from16 v4, v22

    if-eq v3, v0, :cond_25

    const/16 v0, 0x14

    if-ne v3, v0, :cond_26

    .line 1287
    :cond_25
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationFlag:I

    add-int/2addr v0, v5

    iput v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationFlag:I

    .line 1290
    :cond_26
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Latitude"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Longitude"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_16

    .line 1293
    :cond_27
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v5, 0x2

    new-array v6, v5, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v1, v6, v5

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x1e

    invoke-direct {v1, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x1

    aput-object v1, v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_17

    :cond_28
    :goto_16
    const/4 v5, 0x1

    .line 1291
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v5, Lcom/conceptglobal/pmc/utils/UtilDeclarations$DecimalDigitsInputFilter;

    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-direct {v5, v6, v7}, Lcom/conceptglobal/pmc/utils/UtilDeclarations$DecimalDigitsInputFilter;-><init>(II)V

    const/4 v6, 0x0

    aput-object v5, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1296
    :goto_17
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1297
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

    .line 1300
    :cond_29
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 1298
    :cond_2a
    :goto_18
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 1303
    :cond_2b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_19
    move/from16 v6, p9

    move-object/from16 v1, v16

    goto/16 :goto_11

    :cond_2c
    move/from16 v3, p3

    move-object/from16 v1, v16

    move-object/from16 v4, v22

    .line 1305
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1306
    new-instance v0, Landroid/widget/EditText;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v5, 0x41400000    # 12.0f

    .line 1308
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1309
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/high16 v6, 0x7f100000

    invoke-virtual {v0, v6, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1310
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f100007

    invoke-virtual {v0, v6, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1311
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const v5, 0x7f0800dc

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1312
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1313
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1314
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1315
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/16 v5, 0x2002

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1316
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const-string v5, "0123456789."

    invoke-static {v5}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1317
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v7

    invoke-direct {v5, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1318
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

    .line 1319
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

    .line 1322
    :cond_2d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 1320
    :cond_2e
    :goto_1a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 1325
    :cond_2f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 1327
    :cond_30
    const-string v5, "Label"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1328
    new-instance v5, Landroid/widget/EditText;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v6, 0x1

    .line 1329
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1330
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1331
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/high16 v7, 0x7f100000

    invoke-virtual {v5, v7, v6}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1332
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f100007

    invoke-virtual {v5, v7, v6}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1333
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const v6, 0x7f0800dc

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1334
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setGravity(I)V

    .line 1335
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1336
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1337
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1340
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_32

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    goto :goto_1b

    .line 1343
    :cond_31
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 1341
    :cond_32
    :goto_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_1c

    .line 1345
    :cond_33
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1346
    new-instance v0, Landroid/widget/ImageView;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageView:Landroid/widget/ImageView;

    const v5, 0x7f080090

    .line 1348
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1349
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageView:Landroid/widget/ImageView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "###"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1350
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/high16 v7, 0x7f100000

    invoke-virtual {v0, v7, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1351
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v7, 0x7f100007

    invoke-virtual {v0, v7, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1352
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageView:Landroid/widget/ImageView;

    const/16 v5, 0xa

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5, v7, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1354
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_34

    .line 1356
    new-instance v0, Ljava/io/File;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 1359
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1360
    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1363
    :cond_34
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mImageviews:Ljava/util/List;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1364
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageView:Landroid/widget/ImageView;

    new-instance v7, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$5;

    invoke-direct {v7, v10, v3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$5;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;I)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1d

    :cond_35
    :goto_1c
    move/from16 v6, p9

    goto/16 :goto_11

    :goto_1d
    const/4 v0, 0x0

    move-object v14, v0

    .line 1380
    :goto_1e
    new-instance v0, Landroid/widget/TextView;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1386
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1387
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1388
    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v11, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v13, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityId:I

    invoke-virtual {v11, v3, v13}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v8

    const/16 v11, 0x64

    const/4 v13, -0x1

    if-eqz v8, :cond_36

    .line 1389
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x3ee66666    # 0.45f

    invoke-direct {v8, v13, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0x11

    .line 1390
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1391
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v11, 0x3f19999a    # 0.6f

    move-object/from16 p7, v8

    const/4 v8, -0x2

    invoke-direct {v5, v13, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1392
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p10, v5

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v11, v13, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0xa

    .line 1393
    iput v5, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1394
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v11

    const v11, 0x3f666666    # 0.9f

    invoke-direct {v5, v13, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v11, 0x30

    .line 1395
    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1396
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f000000    # 0.5f

    move-object/from16 v17, v5

    const/16 v5, 0x64

    invoke-direct {v11, v13, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0xa

    .line 1397
    iput v5, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v8, p7

    move-object/from16 v5, p10

    move-object v13, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v17

    move-object/from16 v3, v29

    goto :goto_1f

    :cond_36
    const/16 v5, 0x64

    .line 1400
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const v11, 0x3ee66666    # 0.45f

    invoke-direct {v8, v13, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v11, 0x11

    .line 1401
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1402
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 p7, v8

    const/4 v8, -0x2

    invoke-direct {v11, v13, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1403
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v5, v13, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v11, 0xa

    .line 1404
    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1405
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v5

    const v5, 0x3ecccccd    # 0.4f

    const/16 v3, 0x64

    invoke-direct {v8, v13, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1406
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1407
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v11, -0x2

    invoke-direct {v5, v13, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v13, v8

    move-object/from16 v11, v16

    move-object/from16 v3, v29

    move-object/from16 v8, p7

    move-object/from16 v16, v5

    move-object/from16 v5, p10

    .line 1409
    :goto_1f
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v5

    move-object/from16 v5, v32

    .line 1410
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1411
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1412
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1413
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_20
    move-object/from16 v9, v19

    move-object/from16 v7, v23

    :goto_21
    move-object/from16 v8, v33

    :cond_37
    :goto_22
    const/4 v11, 0x1

    goto/16 :goto_25

    .line 1414
    :cond_38
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1415
    invoke-virtual {v14, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_20

    :cond_39
    move-object/from16 v7, v23

    .line 1416
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1417
    invoke-virtual {v14, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_23
    move-object/from16 v9, v19

    goto :goto_21

    .line 1418
    :cond_3a
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1419
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    .line 1420
    :cond_3b
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1421
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    .line 1422
    :cond_3c
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1423
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    .line 1424
    :cond_3d
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1425
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    :cond_3e
    move-object/from16 v8, v33

    .line 1426
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1427
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_24
    move-object/from16 v9, v19

    goto :goto_22

    .line 1428
    :cond_3f
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1429
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    :cond_40
    move-object/from16 v9, v19

    .line 1430
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1431
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    :goto_25
    if-ne v6, v11, :cond_41

    move-object/from16 v6, v31

    .line 1434
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    :cond_41
    move-object/from16 v6, v31

    .line 1435
    :goto_26
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1436
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_42
    :goto_27
    const/4 v3, 0x1

    goto/16 :goto_28

    .line 1437
    :cond_43
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1438
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1439
    :cond_44
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1440
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1441
    :cond_45
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1442
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1443
    :cond_46
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1444
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1445
    :cond_47
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1446
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1447
    :cond_48
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1448
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1449
    :cond_49
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1450
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1451
    :cond_4a
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1452
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1453
    :cond_4b
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1454
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 1456
    :goto_28
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_4c

    .line 1457
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v0

    if-ne v0, v3, :cond_4c

    .line 1458
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1461
    :cond_4c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v11, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityId:I

    move/from16 v13, p3

    invoke-virtual {v3, v13, v11}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4d

    .line 1462
    new-instance v0, Landroid/widget/Button;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1464
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1465
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f0801d2

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v3, v16

    .line 1466
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1467
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1469
    new-instance v3, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$6;

    invoke-direct {v3, v10}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$6;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1490
    :cond_4d
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationFlag:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4e

    .line 1491
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v11, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationLayout:Landroid/widget/LinearLayout;

    .line 1492
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1495
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v11, v2

    move-object v2, v1

    goto/16 :goto_29

    :cond_4e
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4f

    .line 1499
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1500
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 1501
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 1502
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1503
    iget v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->layoutId:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1505
    new-instance v3, Landroid/widget/TextView;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, -0xbbbbbc

    .line 1506
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x4

    .line 1508
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v6, v17

    .line 1509
    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1510
    new-instance v3, Landroid/widget/Button;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationBtn:Landroid/widget/Button;

    .line 1511
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_getButton()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1512
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationBtn:Landroid/widget/Button;

    move-object v11, v2

    move-object/from16 v2, p1

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1513
    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationBtn:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 1514
    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationBtn:Landroid/widget/Button;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1515
    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v3, 0x7f0800c6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1516
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3ee66666    # 0.45f

    move-object/from16 v16, v1

    const/4 v1, -0x2

    const/4 v6, -0x1

    invoke-direct {v2, v6, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0xa

    .line 1517
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1518
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1519
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1520
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p6

    move-object/from16 v2, v16

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 1522
    iput v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationFlag:I

    .line 1523
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationBtn:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$7;

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$7;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_29

    :cond_4f
    move-object v11, v2

    move-object v2, v1

    move-object/from16 v1, p6

    .line 1533
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1536
    :goto_29
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1537
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1538
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1539
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    move-object/from16 v2, p8

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2a

    :cond_50
    move-object/from16 v2, p8

    .line 1540
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1541
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2a

    .line 1543
    :cond_51
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1544
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2a

    .line 1546
    :cond_52
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1547
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2a

    .line 1549
    :cond_53
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1550
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1551
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2a

    .line 1552
    :cond_54
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1553
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1554
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 1555
    :cond_55
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1556
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1557
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 1558
    :cond_56
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1559
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1560
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 1561
    :cond_57
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1562
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1563
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 1564
    :cond_58
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1565
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1566
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1567
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    :cond_59
    :goto_2a
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->layoutId:I

    return-void
.end method

.method public isDataValid()Z
    .locals 25

    move-object/from16 v1, p0

    .line 497
    const-string v2, "Duplicate Product/Distributor"

    .line 498
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 501
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->productList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 503
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setsData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 504
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 505
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 509
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-string v7, ""

    move v8, v0

    move-object v9, v7

    move-object v10, v9

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 510
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 511
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 513
    new-instance v12, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v12, v13}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 518
    :try_start_0
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    const-string v14, "0"

    const-wide/16 v16, 0x0

    const-string v15, "TextBoxN"

    const-string v4, " - "

    move-object/from16 v18, v3

    const-string v3, "TextBoxND"

    move-object/from16 v19, v5

    const-string v5, " "

    const/16 v20, 0x0

    move/from16 v21, v8

    const/4 v8, 0x1

    if-ne v13, v8, :cond_6

    .line 519
    :try_start_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v8, :cond_0

    .line 522
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v22, v9

    const/4 v8, 0x0

    const/16 v21, 0x0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    :goto_2
    const/4 v4, 0x1

    :goto_3
    const/4 v8, 0x0

    goto/16 :goto_13

    .line 524
    :cond_0
    :try_start_3
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ge v8, v13, :cond_1

    .line 527
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v13

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v21
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v22, v9

    :try_start_5
    invoke-virtual/range {v21 .. v21}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v8, 0x0

    const/16 v21, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v22, v9

    goto :goto_2

    :cond_1
    move-object/from16 v22, v9

    const/4 v8, 0x1

    .line 529
    :goto_4
    :try_start_6
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v9, :cond_2

    .line 531
    :try_start_7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    .line 535
    :catch_2
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v8, 0x0

    const/16 v21, 0x0

    .line 538
    :cond_2
    :goto_5
    :try_start_9
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 539
    :cond_3
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v23

    cmp-long v3, v23, v16

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_4
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v13, v3

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    cmp-long v3, v13, v15

    if-gez v3, :cond_5

    .line 542
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    const/4 v8, 0x0

    const/16 v21, 0x0

    :cond_5
    if-eqz v8, :cond_d

    const/4 v3, 0x0

    .line 547
    :try_start_b
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v22, v9

    :goto_6
    move/from16 v8, v21

    goto/16 :goto_12

    :cond_6
    move-object/from16 v22, v9

    .line 553
    :try_start_c
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    if-eqz v8, :cond_c

    .line 554
    :try_start_d
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v9
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    if-ge v8, v9, :cond_7

    .line 557
    :try_start_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    const/4 v8, 0x0

    const/16 v21, 0x0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v9, v22

    goto/16 :goto_2

    :cond_7
    const/4 v8, 0x1

    .line 559
    :goto_7
    :try_start_f
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    if-eqz v9, :cond_8

    .line 561
    :try_start_10
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_8

    .line 565
    :catch_5
    :try_start_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    const/4 v8, 0x0

    const/16 v21, 0x0

    .line 569
    :cond_8
    :goto_8
    :try_start_12
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 570
    :cond_9
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v23

    cmp-long v3, v23, v16

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_a
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v13, v3

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v15
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    cmp-long v3, v13, v15

    if-gez v3, :cond_b

    .line 573
    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    const/4 v8, 0x0

    const/16 v21, 0x0

    :cond_b
    if-eqz v8, :cond_d

    const/4 v3, 0x0

    .line 577
    :try_start_14
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_9

    :catch_6
    move-exception v0

    move/from16 v8, v21

    move-object/from16 v9, v22

    goto/16 :goto_12

    :cond_c
    const/4 v8, 0x1

    :cond_d
    :goto_9
    if-eqz v8, :cond_14

    .line 591
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DropDown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    const v4, 0x7f100001

    const-string v5, "."

    if-eqz v3, :cond_10

    .line 592
    :try_start_15
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 593
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_a

    .line 595
    :cond_e
    invoke-virtual {v12, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 596
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 598
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x236

    if-ne v3, v4, :cond_f

    .line 600
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    goto :goto_b

    :cond_f
    move-object/from16 v9, v22

    .line 604
    :goto_b
    :try_start_16
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x248

    if-ne v3, v4, :cond_15

    .line 605
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    goto/16 :goto_e

    :catch_7
    move-exception v0

    goto/16 :goto_6

    .line 609
    :cond_10
    :try_start_17
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    const-string v8, "Multiselect Dropdown"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 611
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 612
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 613
    array-length v4, v3

    if-lez v4, :cond_11

    .line 614
    array-length v4, v3

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v4, :cond_14

    aget-object v9, v3, v8

    .line 615
    new-instance v13, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v13, v14}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 616
    invoke-virtual {v13, v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 617
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 618
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 619
    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->insertListAttributes:Ljava/util/List;

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 622
    :cond_11
    invoke-virtual {v12, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 625
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 628
    :cond_12
    invoke-virtual {v12, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 631
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 635
    :cond_13
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 638
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    :cond_14
    :goto_d
    move-object/from16 v9, v22

    :cond_15
    :goto_e
    if-eqz v9, :cond_17

    .line 641
    :try_start_18
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_17

    if-eqz v10, :cond_17

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_17

    .line 642
    new-instance v3, Lcom/conceptglobal/pmc/model/ProductAndDistributorData;

    invoke-direct {v3, v9, v10}, Lcom/conceptglobal/pmc/model/ProductAndDistributorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->productList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a

    if-eqz v4, :cond_16

    .line 645
    :try_start_19
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    const/4 v4, 0x1

    :try_start_1a
    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 646
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8

    goto :goto_11

    :catch_8
    move-exception v0

    goto/16 :goto_3

    :cond_16
    const/4 v4, 0x1

    .line 648
    :try_start_1b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->productList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    goto :goto_10

    :catch_9
    move-exception v0

    goto :goto_f

    :catch_a
    move-exception v0

    const/4 v4, 0x1

    :goto_f
    move/from16 v8, v21

    goto :goto_13

    :cond_17
    const/4 v4, 0x1

    :goto_10
    move/from16 v20, v21

    :goto_11
    move/from16 v8, v20

    goto :goto_14

    :catch_b
    move-exception v0

    const/4 v4, 0x1

    move/from16 v8, v21

    move-object/from16 v9, v22

    goto :goto_13

    :catch_c
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move/from16 v21, v8

    move-object/from16 v22, v9

    :goto_12
    const/4 v4, 0x1

    .line 653
    :goto_13
    const-string v3, "ChildAttributeFragment"

    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    move-object/from16 v3, v18

    move-object/from16 v5, v19

    goto/16 :goto_1

    :cond_18
    move/from16 v21, v8

    const/4 v4, 0x1

    move/from16 v0, v21

    goto/16 :goto_0

    :cond_19
    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 276
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 214
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mActivity:Landroid/app/Activity;

    .line 217
    :try_start_0
    check-cast p1, Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    const-string v0, "android.intent.action.GPSTurnedOnResult"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$LocalBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$LocalBroadcastReceiver;

    .line 224
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$LocalBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1991
    :cond_0
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDay:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 231
    iget-object p3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 232
    iput p3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setCount:I

    const v0, 0x7f0c0070

    .line 233
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->rootView:Landroid/view/View;

    .line 234
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->init()V

    .line 235
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 236
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getData(Landroid/os/Bundle;)V

    .line 237
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setListeners()V

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onCropchangeListener(I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1795
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->farmerId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->dos:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1796
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mDatetext:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->dos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1800
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 250
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 251
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setsData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 252
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$LocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 1909
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Longitude"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1910
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1911
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1912
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1913
    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 1914
    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 1915
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1916
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1917
    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 1918
    check-cast v7, Landroid/widget/EditText;

    .line 1919
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1920
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

    .line 1921
    :cond_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1922
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

    .line 1933
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->locationView:Landroid/view/View;

    return-void
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 301
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 263
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 257
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 244
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

    .line 700
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_9

    move-object/from16 v6, p1

    .line 701
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 723
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

    .line 724
    :try_start_1
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

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

    .line 727
    :try_start_2
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

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

    .line 729
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

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

    .line 732
    :try_start_4
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

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

    .line 734
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-eqz v16, :cond_3

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

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

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

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

    .line 737
    :try_start_6
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

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

    .line 740
    :try_start_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 745
    :cond_4
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

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

    .line 746
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

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

    .line 749
    :try_start_8
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

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

    .line 751
    :goto_3
    :try_start_9
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-eqz v16, :cond_7

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

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

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

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

    .line 754
    :try_start_a
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

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

    .line 757
    :try_start_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 763
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

    .line 953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 954
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 955
    monitor-enter p0

    .line 956
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 957
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    if-eqz p2, :cond_2

    .line 959
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 961
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

    .line 963
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSequenceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 965
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    goto :goto_0

    :cond_1
    return-object p1

    .line 973
    :cond_2
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 957
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public testMethod()V
    .locals 13

    .line 439
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->farmerId:Ljava/lang/String;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityAssignmentId:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->parentAttributeId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsChildActivity(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->farmerId:Ljava/lang/String;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityId:I

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->transId:J

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->parentAttributeId:I

    invoke-virtual/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsChildActivitySA(Ljava/lang/String;IJI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->insertListAttributes:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->farmerId:Ljava/lang/String;

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityId:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->isPlanned:I

    iget v7, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->assignmentID:I

    iget v9, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->segmentId:I

    iget-wide v10, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->transId:J

    iget v12, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->activityAssignmentId:I

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v12}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsWithSequenceId(Ljava/util/List;Ljava/lang/String;IIIIIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 446
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 449
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->onDestroy()V

    .line 450
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;->addOrDeleteTab(IIILjava/lang/String;)V

    :cond_0
    return-void
.end method

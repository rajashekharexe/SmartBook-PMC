.class public Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;
.super Landroidx/fragment/app/Fragment;
.source "ChildAttributesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/CropChanger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$LocalBroadcastReceiver;,
        Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$SingleTapConfirm;,
        Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;,
        Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$NumericDigitsInputFilter;
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

.field private mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$LocalBroadcastReceiver;

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

    .line 201
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 106
    const-string v0, "ChildAttributeFragment"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setCount:I

    .line 112
    const-string v1, "0"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->farmerId:Ljava/lang/String;

    .line 114
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationFlag:I

    .line 118
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->datePos:I

    .line 123
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mFiledStr:Ljava/lang/String;

    const/4 v1, -0x1

    .line 131
    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mForOperations:I

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mForDates:I

    .line 132
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->layoutId:I

    const/4 v1, 0x0

    .line 143
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->childValuelistAttributes:Ljava/util/List;

    .line 148
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->brandsList:Ljava/util/List;

    .line 150
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->countVillage:I

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->villageDetails:Ljava/util/Map;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeMap:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setsData:Ljava/util/Map;

    const/4 v0, 0x1

    .line 184
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->ATTRIBUTEID_TAG:I

    const/4 v0, 0x2

    .line 185
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->SETID_TAG:I

    const/4 v0, 0x3

    .line 186
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->ENTRYID_TAG:I

    .line 1541
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$8;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->operationListener:Landroid/view/View$OnClickListener;

    .line 1637
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$9;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 1757
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$10;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$10;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    .line 1915
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$12;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->datesListener:Landroid/view/View$OnClickListener;

    .line 1947
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$14;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$14;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->farmerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->findCurrentLocation()V

    return-void
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Ljava/util/HashMap;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Ljava/util/Map;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setsData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Ljava/util/List;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->listAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Ljava/util/List;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArrIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Ljava/util/List;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->AlertlistAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->parentAttributeId:I

    return p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->ismba:I

    return p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->dateSelectedEdit:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mYear:I

    return p0
.end method

.method static synthetic access$2502(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I
    .locals 0

    .line 104
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mYear:I

    return p1
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mMonth:I

    return p0
.end method

.method static synthetic access$2602(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I
    .locals 0

    .line 104
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mMonth:I

    return p1
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDay:I

    return p0
.end method

.method static synthetic access$2702(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I
    .locals 0

    .line 104
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDay:I

    return p1
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->updateDisplay()V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)Ljava/util/List;
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->filterAttributesByFilterAttribute(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/view/GestureDetector;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->inDragMode:Z

    return p0
.end method

.method static synthetic access$3102(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->inDragMode:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->initX:I

    return p0
.end method

.method static synthetic access$3202(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I
    .locals 0

    .line 104
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->initX:I

    return p1
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->initY:I

    return p0
.end method

.method static synthetic access$3302(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I
    .locals 0

    .line 104
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->initY:I

    return p1
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->initViewX:I

    return p0
.end method

.method static synthetic access$3402(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I
    .locals 0

    .line 104
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->initViewX:I

    return p1
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->initViewY:I

    return p0
.end method

.method static synthetic access$3502(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I
    .locals 0

    .line 104
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->initViewY:I

    return p1
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->newX:I

    return p0
.end method

.method static synthetic access$3602(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I
    .locals 0

    .line 104
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->newX:I

    return p1
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->newY:I

    return p0
.end method

.method static synthetic access$3702(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I
    .locals 0

    .line 104
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->newY:I

    return p1
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->screenWidth:I

    return p0
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->screenHight:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->globalView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/widget/ImageView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->updateViews(Landroid/widget/ImageView;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->refreshSetViews(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/content/Context;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityId:I

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->assignmentID:I

    return p0
.end method

.method private addAudianceFarmerDetails(Ljava/util/List;Ljava/lang/String;I)V
    .locals 19
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

    .line 443
    const-string v2, "\'"

    const-string v3, ""

    const-string v4, "1"

    const-string v5, "false"

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    .line 444
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    move-object/from16 v9, p1

    .line 445
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 446
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 447
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 449
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 450
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 455
    :cond_1
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 456
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 457
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 458
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 459
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 460
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 461
    new-instance v13, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-direct {v13}, Lcom/conceptglobal/pmc/model/FarmerMaster;-><init>()V

    .line 462
    const-string v14, "true"

    invoke-virtual {v13, v14}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setisNew(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v13, v5}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setServerupdatedstatus(Ljava/lang/String;)V

    .line 464
    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v15

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setPdaid(Ljava/lang/String;)V

    .line 465
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getPdaid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    move-object/from16 p1, v8

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setRespondentNo(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 466
    invoke-virtual {v13, v7}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setStatus(I)V

    .line 467
    invoke-virtual {v13, v4}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setTypeofFarmer(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v13, v4}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setFarmerTypeId(Ljava/lang/String;)V

    .line 469
    const-string v8, "True"

    invoke-virtual {v13, v8}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setIsActive(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v13, v7}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setAudiencefarmer(I)V

    .line 471
    invoke-virtual {v13, v5}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setServerupdatedstatus(Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/common/Queries;->getActivityShortCode(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 473
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateAudianceFarmer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setColumn5(Ljava/lang/String;)V

    .line 475
    new-instance v7, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-direct {v7}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;-><init>()V

    .line 476
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setRespondentNo(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 478
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_4

    move-object/from16 v14, p1

    .line 479
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/conceptglobal/pmc/model/AttributeModel;

    move-object/from16 v16, v4

    .line 480
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-object/from16 v17, v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    move-object/from16 p1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v14

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v6, v14}, Lcom/conceptglobal/pmc/common/Queries;->getAudianceFarmerMappingID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 481
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingAudianceFramerObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getListAudianceData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/AudianceFarmer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 482
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FarmerMaster"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 483
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-virtual {v15}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Mobile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 486
    invoke-virtual {v15}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/utils/Encryption;->encryptRemovenewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 489
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT Mobile FROM FarmerMaster where  Mobile = \'"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v0

    .line 490
    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT Mobile FROM PMCTerritoryFarmerMaster where  Mobile =\'"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_6

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v4, :cond_3

    .line 496
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FarmerCropDetails"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-virtual {v15}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v0, p3

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 p1, v18

    goto/16 :goto_3

    :cond_4
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 p1, v6

    .line 501
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 502
    invoke-static {v13, v9, v10}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAudianceFarmerDetails(Lcom/conceptglobal/pmc/model/FarmerMaster;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 504
    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 505
    invoke-static {v7, v11, v12}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAudianceFarmerCropDetails(Lcom/conceptglobal/pmc/model/FarmerCropMapping;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v0, p3

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-void
.end method

.method private addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V
    .locals 19
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

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move/from16 v12, p4

    .line 760
    new-instance v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 762
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeMap:Ljava/util/Map;

    .line 764
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 765
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

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

    .line 769
    :cond_0
    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    .line 770
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 771
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080096

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 775
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->layoutId:I

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 780
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 784
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, -0xbbbbbc

    .line 785
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Set "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setCount:I

    add-int/2addr v4, v14

    iput v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    new-instance v15, Landroid/widget/ImageView;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v15, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0800cb

    .line 789
    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 790
    iget v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 792
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    .line 793
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 795
    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 798
    invoke-virtual {v0, v15}, Lcom/conceptglobal/imaterialdesign/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 800
    iget v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 802
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    .line 803
    :goto_0
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "."

    const-string v2, ""

    if-ge v8, v0, :cond_6

    .line 806
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 808
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->childValuelistAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz v12, :cond_1

    .line 809
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->childValuelistAttributes:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v10, v0, v1, v3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->performFiltering(Ljava/util/List;Ljava/lang/String;I)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v0

    .line 810
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

    .line 812
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 823
    :goto_1
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 824
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v11, :cond_4

    .line 828
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 829
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    move-object v4, v0

    .line 833
    :goto_3
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    if-eqz v11, :cond_5

    .line 836
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeMap:Ljava/util/Map;

    iget v6, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setCount:I

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v17, v6

    move-object v6, v13

    move-object/from16 v18, v7

    move/from16 v7, v16

    move/from16 v16, v8

    move-object/from16 v8, v18

    const/4 v14, -0x2

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;I)V

    goto :goto_4

    :cond_5
    move/from16 v16, v8

    const/4 v14, -0x2

    .line 838
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeMap:Ljava/util/Map;

    iget v9, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setCount:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v6, v13

    invoke-virtual/range {v0 .. v9}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;I)V

    :goto_4
    add-int/lit8 v8, v16, 0x1

    const/4 v9, -0x2

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v14, -0x2

    .line 842
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setsData:Ljava/util/Map;

    iget v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeMap:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 844
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v3, p2

    .line 846
    invoke-virtual {v3, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v11, :cond_7

    if-eqz v12, :cond_7

    .line 848
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->childValuelistAttributes:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v10, v0, v1, v3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->performFiltering(Ljava/util/List;Ljava/lang/String;I)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 850
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->parentAttributeId:I

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-direct {v10, v0, v1, v2, v12}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V

    .line 855
    :cond_7
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$3;

    invoke-direct {v0, v10}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$3;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addFView()V
    .locals 8

    .line 2121
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->windowManager:Landroid/view/WindowManager;

    .line 2122
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2123
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2124
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->screenWidth:I

    .line 2125
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->screenHight:I

    const/4 v0, 0x0

    .line 2126
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->inDragMode:Z

    .line 2127
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->globalView:Landroid/widget/ImageView;

    const v1, 0x7f080061

    .line 2128
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2129
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    const/16 v2, 0x32

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v4

    const/16 v6, 0x8

    const/4 v7, -0x3

    const/16 v5, 0x7d2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x55

    .line 2130
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0xf

    .line 2131
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0x78

    .line 2132
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2133
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->globalView:Landroid/widget/ImageView;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;

    invoke-direct {v2, p0, v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2177
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->globalView:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private captureImage(ILjava/lang/String;)V
    .locals 4

    .line 1892
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1893
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

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageFile:Ljava/io/File;

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 1895
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->image1Path:Ljava/lang/String;

    .line 1898
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1901
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    const-string v1, "com.conceptglobal.pmcdeepakfertilizers.provider"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageFile:Ljava/io/File;

    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1904
    const-string v1, "output"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1906
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 1907
    const-string v2, ""

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v2, 0x3

    .line 1908
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1911
    :cond_1
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1912
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->startActivityForResult(Landroid/content/Intent;I)V

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

    .line 750
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 751
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 752
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

    .line 2066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2068
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

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

    .line 2069
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2070
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2071
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

    .line 2074
    const-string v1, "ChildAttributeFragment"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_2
    return-object v0
.end method

.method private findCurrentLocation()V
    .locals 5

    .line 1769
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1770
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1773
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$11;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$11;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    const-string v3, "ChildAttributeFragment"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1789
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData(Landroid/os/Bundle;)V
    .locals 7

    .line 293
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->ismba:I

    .line 294
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->farmerId:Ljava/lang/String;

    .line 295
    const-string v0, "ISSELFASSIGN"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->isSelfassign:I

    .line 296
    const-string v0, "SEGMENTID"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->segmentId:I

    .line 297
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityId:I

    .line 298
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->isPlanned:I

    .line 299
    const-string v0, "ParentAttributeId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->parentAttributeId:I

    .line 300
    const-string v0, "ActivityAssignmentId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityAssignmentId:I

    .line 301
    const-string v0, "TRANSID"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->transId:J

    .line 302
    const-string v0, "Count"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->countVillage:I

    .line 303
    const-string v0, "pairId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

    .line 304
    const-string v0, "AssignmentId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->assignmentID:I

    .line 305
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->parentAttributeId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityAssignmentId:I

    iget-wide v5, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->transId:J

    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getChildValuesAttributeQueryUpdate(Ljava/lang/String;IIIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->childValuelistAttributes:Ljava/util/List;

    .line 306
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->parentAttributeId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getSelectedAttributeQueryUpdate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->AlertlistAttributes:Ljava/util/List;

    .line 307
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->childValuelistAttributes:Ljava/util/List;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->listAttributes:Ljava/util/List;

    .line 308
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    .line 309
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDay:I

    const/4 v0, 0x2

    .line 310
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mMonth:I

    const/4 v0, 0x1

    .line 311
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mYear:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 313
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0905f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    .line 273
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->btnAdd:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 274
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->btnfinish:Landroid/widget/Button;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    .line 276
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    .line 277
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 278
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArrIds:Ljava/util/List;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    .line 282
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$SingleTapConfirm;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$SingleTapConfirm;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private refreshSetViews(I)V
    .locals 10

    .line 869
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setsData:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 871
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setsData:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, -0x1

    .line 872
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mForOperations:I

    .line 873
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mForDates:I

    const/4 v0, 0x0

    .line 874
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setCount:I

    .line 875
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 876
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 877
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 878
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setsData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 879
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 880
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

    .line 882
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 883
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 884
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

    .line 887
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

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

    .line 888
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 889
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

    .line 891
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 893
    :cond_1
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

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

    .line 894
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 895
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

    .line 897
    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 899
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

    .line 903
    :cond_4
    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->parentAttributeId:I

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v5, v4, v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V

    add-int/lit8 v2, v2, 0x1

    .line 904
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .line 907
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 1971
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->dateSelectedEdit:Landroid/widget/EditText;

    .line 1972
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1974
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1976
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1978
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1979
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 1534
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1535
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1536
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1537
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setListeners()V
    .locals 5

    const/4 v0, 0x0

    .line 318
    :goto_0
    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->countVillage:I

    if-ge v0, v1, :cond_0

    .line 319
    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->parentAttributeId:I

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addvillageLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addDynamicLayoutVillageDetails(ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->btnAdd:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->btnfinish:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1524
    const-string v0, "."

    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

    if-eqz v1, :cond_0

    .line 1525
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

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

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

    .line 1528
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1529
    const-string p2, "ChildAttributeFragment"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 1928
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1929
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

    new-instance v2, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$13;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$13;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1935
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 1984
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mFiledStr:Ljava/lang/String;

    .line 1985
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1987
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1989
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1991
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setDate(I)V

    return-void
.end method

.method private updateViews(Landroid/widget/ImageView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 2181
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;I)V
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
            ">;I)V"
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

    .line 945
    iget v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mForOperations:I

    const/4 v8, 0x1

    add-int/2addr v2, v8

    iput v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mForOperations:I

    .line 946
    iget v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mForDates:I

    add-int/2addr v2, v8

    iput v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mForDates:I

    .line 947
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 951
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    .line 952
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 953
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x5

    .line 954
    invoke-virtual {v6, v7, v7, v7, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 955
    iget v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->layoutId:I

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 960
    new-instance v4, Landroid/widget/TextView;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, -0xbbbbbc

    .line 961
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 962
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v2

    if-ne v2, v8, :cond_0

    .line 964
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

    .line 970
    iput-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    .line 974
    new-instance v2, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$4;

    invoke-direct {v2, v10}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$4;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    .line 998
    new-instance v5, Landroid/widget/EditText;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v5, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 999
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

    .line 1000
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1001
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v15, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1002
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f100007

    invoke-virtual {v3, v1, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1003
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mForOperations:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setId(I)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 1004
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTextSize(F)V

    const v0, 0x7f0800dc

    .line 1006
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v0, 0x7f0800d7

    const/4 v15, 0x0

    .line 1007
    invoke-virtual {v3, v15, v15, v0, v15}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1008
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1010
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 1011
    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 1013
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 1017
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

    .line 1018
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->cropId:Ljava/lang/String;

    .line 1019
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

    .line 1021
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1024
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

    .line 1027
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

    .line 1030
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1035
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

    .line 1038
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1036
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

    .line 1042
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

    .line 1051
    :cond_6
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKey(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100001

    .line 1052
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1053
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1043
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

    .line 1044
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKeyDefault(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100001

    .line 1045
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1046
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1048
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

    .line 1055
    :goto_3
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;

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

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;)V

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

    .line 1056
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1058
    new-instance v9, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1059
    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1060
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1061
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f100007

    invoke-virtual {v9, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1062
    iget v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mForOperations:I

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setId(I)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 1063
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setTextSize(F)V

    const v2, 0x7f0800dc

    .line 1064
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1065
    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v5, 0x11

    .line 1066
    invoke-virtual {v9, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1067
    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setLongClickable(Z)V

    const v2, 0x7f0800d7

    .line 1068
    invoke-virtual {v9, v7, v7, v2, v7}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1070
    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1072
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

    .line 1075
    :cond_a
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1078
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

    .line 1083
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    .line 1084
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->farmerId:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityAssignmentId:I

    move-object/from16 p4, v6

    iget-wide v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->transId:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v3, p5

    move-object/from16 v7, p4

    const/16 v14, 0x11

    :try_start_3
    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry_byIds(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJ)Ljava/lang/String;

    move-result-object v0

    .line 1083
    invoke-virtual {v7, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->brandsList:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    const/16 v14, 0x11

    .line 1086
    :goto_5
    :try_start_4
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_6
    const/4 v11, 0x0

    goto :goto_8

    :cond_c
    const/16 v14, 0x11

    .line 1090
    :try_start_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    .line 1091
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityAssignmentId:I

    iget-wide v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->transId:J

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p4, v7

    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p5

    move-object/from16 v14, p4

    const/4 v11, 0x0

    :try_start_6
    invoke-virtual/range {v0 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry_Pairid(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    invoke-virtual {v14, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->brandsList:Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    const/4 v11, 0x0

    .line 1093
    :goto_7
    :try_start_7
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1098
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 1101
    :goto_9
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_f

    .line 1103
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandSelected()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1104
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->brandsList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->brandsList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_d

    .line 1107
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    :cond_d
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->brandsList:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->brandsList:Ljava/util/List;

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

    .line 1116
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1119
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v9, v1, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_b

    .line 1124
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
    const/4 v11, 0x0

    .line 1127
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

    const/4 v11, 0x0

    .line 1131
    :goto_a
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1133
    :goto_b
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/4 v14, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v8, p5

    move-object v11, v9

    move-object v9, v14

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;)V

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object v3, v11

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

    .line 1135
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v14, "0"

    if-eqz v4, :cond_16

    .line 1136
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    .line 1137
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1138
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1139
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mForDates:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 1140
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1141
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1142
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1143
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1144
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1146
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 1148
    :try_start_8
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->cropId:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->cropId:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1149
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->cropId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->dos:Ljava/lang/String;

    .line 1151
    :cond_13
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->dos:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 1152
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->dos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1153
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

    .line 1154
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1156
    :cond_15
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

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

    .line 1159
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

    .line 1161
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1162
    new-instance v0, Landroid/widget/EditText;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v4, 0x0

    .line 1163
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1164
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1165
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f100007

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1166
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1167
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1168
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1169
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

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

    .line 1171
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

    .line 1172
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

    .line 1175
    :cond_17
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 1173
    :cond_18
    :goto_e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 1178
    :cond_19
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

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

    .line 1180
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1181
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    .line 1182
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1183
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1184
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1185
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1186
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1187
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1188
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 1189
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v8, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/utils/UtilDeclarations$NumericDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations$NumericDigitsInputFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1190
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    new-instance v5, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

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

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;)V

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1192
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

    .line 1195
    :cond_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1197
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

    .line 1198
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

    .line 1201
    :cond_1d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 1199
    :cond_1e
    :goto_12
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 1204
    :cond_1f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

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

    .line 1206
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1207
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    .line 1208
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1209
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1210
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1211
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1212
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1213
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1214
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1215
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$DecimalDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    const/4 v8, 0x2

    invoke-direct {v1, v10, v3, v8}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;II)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1216
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    new-instance v6, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

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

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;)V

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1218
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

    .line 1219
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

    .line 1222
    :cond_21
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1220
    :cond_22
    :goto_14
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1225
    :cond_23
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

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

    .line 1227
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1228
    new-instance v0, Landroid/widget/EditText;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v5, 0x1

    .line 1229
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1230
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1231
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f100007

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1232
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1233
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1234
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1235
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

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

    .line 1236
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v0, 0x15

    if-eq v13, v0, :cond_25

    const/16 v0, 0x14

    if-ne v13, v0, :cond_26

    .line 1239
    :cond_25
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationFlag:I

    add-int/2addr v0, v5

    iput v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationFlag:I

    .line 1242
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

    .line 1245
    :cond_27
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

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

    .line 1243
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/utils/UtilDeclarations$DecimalDigitsInputFilter;

    const/4 v3, 0x4

    const/4 v5, 0x6

    invoke-direct {v2, v3, v5}, Lcom/conceptglobal/pmc/utils/UtilDeclarations$DecimalDigitsInputFilter;-><init>(II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1248
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

    .line 1249
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

    .line 1252
    :cond_29
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 1250
    :cond_2a
    :goto_18
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 1255
    :cond_2b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_19
    move-object/from16 v2, v30

    goto/16 :goto_1c

    :cond_2c
    move-object/from16 v2, v30

    .line 1257
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1258
    new-instance v0, Landroid/widget/EditText;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v5, 0x1

    .line 1259
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1260
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1261
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1262
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f100007

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1263
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1264
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1265
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1266
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1267
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v5

    invoke-direct {v1, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1268
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

    .line 1269
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

    .line 1272
    :cond_2d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 1270
    :cond_2e
    :goto_1a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 1275
    :cond_2f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 1277
    :cond_30
    const-string v5, "Label"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1278
    new-instance v5, Landroid/widget/EditText;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v6, 0x1

    .line 1279
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1280
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1281
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1282
    iget-object v3, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v5, 0x7f100007

    invoke-virtual {v3, v5, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1283
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const v3, 0x7f0800dc

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1284
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 1285
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1288
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

    .line 1291
    :cond_31
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 1289
    :cond_32
    :goto_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_1c

    .line 1293
    :cond_33
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1294
    new-instance v0, Landroid/widget/ImageView;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    const v5, 0x7f080090

    .line 1296
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1297
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "###"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1298
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1299
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f100007

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1300
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1302
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_34

    .line 1304
    new-instance v0, Ljava/io/File;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1307
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1308
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1311
    :cond_34
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mImageviews:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1312
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$5;

    invoke-direct {v1, v10, v13}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$5;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_35
    :goto_1c
    const/4 v3, 0x0

    .line 1328
    :goto_1d
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1334
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1335
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1336
    iget-object v5, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v8, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityId:I

    invoke-virtual {v7, v13, v8}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x64

    const/4 v8, -0x2

    const/4 v9, -0x1

    if-eqz v5, :cond_36

    .line 1337
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v11, 0x3ee66666    # 0.45f

    invoke-direct {v5, v9, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v11, 0x11

    .line 1338
    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1339
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const v14, 0x3f19999a    # 0.6f

    invoke-direct {v11, v9, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1340
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-direct {v14, v9, v8, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v15, 0xa

    .line 1341
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1342
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const v7, 0x3f666666    # 0.9f

    invoke-direct {v15, v9, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v7, 0x30

    .line 1343
    iput v7, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1344
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f000000    # 0.5f

    move-object/from16 p9, v5

    const/16 v5, 0x64

    invoke-direct {v7, v9, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0xa

    .line 1345
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v5, p9

    goto :goto_1e

    :cond_36
    const/16 v5, 0x64

    .line 1348
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const v8, 0x3ee66666    # 0.45f

    invoke-direct {v7, v9, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v8, 0x11

    .line 1349
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1350
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v14, -0x2

    invoke-direct {v11, v9, v14, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1351
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-direct {v8, v9, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v15, 0xa

    .line 1352
    iput v15, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1353
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p4, v7

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v14, v9, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1354
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1355
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v7, -0x2

    invoke-direct {v15, v9, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v5, p4

    move-object v7, v14

    move-object v14, v8

    :goto_1e
    move-object/from16 v8, v27

    .line 1357
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v9, v28

    .line 1358
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1359
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1360
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1361
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1f
    move-object/from16 v28, v9

    move-object/from16 v1, v23

    :goto_20
    move-object/from16 v14, v29

    move-object/from16 v6, v35

    :goto_21
    move-object/from16 v7, v37

    move-object/from16 v5, v38

    :goto_22
    move-object/from16 v9, v40

    goto/16 :goto_25

    .line 1362
    :cond_37
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1363
    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1f

    :cond_38
    move-object/from16 v1, v23

    .line 1364
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1365
    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_23
    move-object/from16 v28, v9

    goto :goto_20

    .line 1366
    :cond_39
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1367
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    :cond_3a
    move-object/from16 v6, v35

    .line 1368
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1369
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_24
    move-object/from16 v28, v9

    move-object/from16 v14, v29

    goto :goto_21

    .line 1370
    :cond_3b
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1371
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    .line 1372
    :cond_3c
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1373
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    :cond_3d
    move-object/from16 v5, v38

    .line 1374
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1375
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v28, v9

    move-object/from16 v14, v29

    move-object/from16 v7, v37

    goto :goto_22

    :cond_3e
    move-object/from16 v7, v37

    .line 1376
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1377
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v28, v9

    move-object/from16 v14, v29

    goto :goto_22

    :cond_3f
    move-object/from16 v28, v9

    move-object/from16 v9, v40

    .line 1378
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1379
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_40
    move-object/from16 v14, v29

    .line 1381
    :goto_25
    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1382
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1383
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_41
    :goto_26
    const/4 v8, 0x1

    goto/16 :goto_27

    .line 1384
    :cond_42
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1385
    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1386
    :cond_43
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1387
    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1388
    :cond_44
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1389
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1390
    :cond_45
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1391
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1392
    :cond_46
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1393
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1394
    :cond_47
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1395
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1396
    :cond_48
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1397
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1398
    :cond_49
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1399
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1400
    :cond_4a
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1401
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 1403
    :goto_27
    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_4b

    .line 1404
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v0

    if-ne v0, v8, :cond_4b

    .line 1405
    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1408
    :cond_4b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->queries:Lcom/conceptglobal/pmc/common/Queries;

    move-object/from16 v35, v6

    iget v6, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityId:I

    invoke-virtual {v8, v13, v6}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4c

    .line 1409
    new-instance v0, Landroid/widget/Button;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1411
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1412
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0801d2

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1413
    invoke-virtual {v0, v15}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1414
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1416
    new-instance v6, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$6;

    invoke-direct {v6, v10}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$6;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1437
    :cond_4c
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationFlag:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4d

    .line 1438
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationLayout:Landroid/widget/LinearLayout;

    .line 1439
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1442
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_28

    :cond_4d
    const/4 v6, 0x2

    if-ne v0, v6, :cond_4e

    .line 1446
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1447
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 1448
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x10

    .line 1449
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1450
    iget v8, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->layoutId:I

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1452
    new-instance v8, Landroid/widget/TextView;

    iget-object v14, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v8, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v14, -0xbbbbbc

    .line 1453
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v14, 0x4

    .line 1455
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1456
    invoke-virtual {v0, v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1457
    new-instance v8, Landroid/widget/Button;

    iget-object v11, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v8, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    .line 1458
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v11

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_getButton()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    move-object/from16 v6, p1

    const/4 v11, 0x0

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1460
    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setGravity(I)V

    .line 1461
    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 1462
    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0800c6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1463
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const v14, 0x3ee66666    # 0.45f

    const/4 v15, -0x2

    invoke-direct {v6, v8, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v8, 0xa

    .line 1464
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1465
    iget-object v8, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    invoke-virtual {v0, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1466
    iget-object v6, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1467
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v6, p6

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1469
    iput v11, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationFlag:I

    .line 1470
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationBtn:Landroid/widget/Button;

    new-instance v6, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$7;

    invoke-direct {v6, v10}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$7;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_28

    :cond_4e
    move-object/from16 v6, p6

    .line 1480
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1483
    :goto_28
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArrIds:Ljava/util/List;

    move-object/from16 v6, v28

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1485
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1486
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    move-object/from16 v2, p8

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    :cond_4f
    move-object/from16 v2, p8

    .line 1487
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1488
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 1490
    :cond_50
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1491
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1492
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 1493
    :cond_51
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1494
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1495
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 1496
    :cond_52
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1497
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1498
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 1499
    :cond_53
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1500
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1501
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 1502
    :cond_54
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1503
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_55
    move-object/from16 v1, v35

    .line 1505
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1506
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1507
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 1508
    :cond_56
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1509
    iget-object v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1510
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 1511
    :cond_57
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1512
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1513
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1514
    iget-object v1, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    :cond_58
    :goto_29
    iget v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->layoutId:I

    return-void
.end method

.method public isDataValid()Z
    .locals 24

    move-object/from16 v1, p0

    .line 516
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 518
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setsData:Ljava/util/Map;

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

    .line 519
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 520
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 525
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

    .line 526
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 527
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 529
    new-instance v13, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v13, v14}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 536
    :try_start_0
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    const/16 v15, 0x337

    if-ne v14, v15, :cond_0

    .line 537
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

    .line 539
    :cond_0
    :try_start_2
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    const/16 v15, 0x338

    if-ne v14, v15, :cond_1

    .line 540
    :try_start_3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 542
    :cond_1
    :try_start_4
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    const/16 v15, 0x336

    if-ne v14, v15, :cond_2

    .line 543
    :try_start_5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 545
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

    .line 546
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

    .line 549
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

    .line 551
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

    .line 554
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

    .line 556
    :goto_4
    :try_start_c
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    if-eqz v14, :cond_5

    .line 558
    :try_start_d
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_5

    .line 562
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

    .line 565
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

    .line 566
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

    .line 569
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

    .line 574
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

    .line 580
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

    .line 581
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

    .line 584
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

    .line 586
    :goto_6
    :try_start_14
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    if-eqz v14, :cond_b

    .line 588
    :try_start_15
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    goto :goto_7

    .line 592
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

    .line 595
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

    .line 596
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

    .line 599
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

    .line 603
    :try_start_19
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_f
    move/from16 v7, v20

    const/4 v8, 0x1

    :cond_10
    :goto_8
    if-eqz v8, :cond_16

    .line 618
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

    .line 619
    :try_start_1a
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 620
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_9

    .line 622
    :cond_11
    invoke-virtual {v13, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 623
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

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

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 625
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 626
    :cond_12
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    const-string v8, "Multiselect Dropdown"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 628
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 629
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 630
    array-length v2, v0

    if-lez v2, :cond_13

    .line 631
    array-length v2, v0

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v2, :cond_16

    aget-object v3, v0, v11

    .line 632
    new-instance v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->attributeHashmap:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v8, v14}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 633
    invoke-virtual {v8, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

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

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 636
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 639
    :cond_13
    invoke-virtual {v13, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

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

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 642
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 645
    :cond_14
    invoke-virtual {v13, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

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

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 648
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 652
    :cond_15
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

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

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->pairID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 655
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->insertListAttributes:Ljava/util/List;

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

    .line 660
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

    .line 663
    iget v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityId:I

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

    .line 664
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_18

    .line 666
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mActivity:Landroid/app/Activity;

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

    .line 268
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 206
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mActivity:Landroid/app/Activity;

    .line 209
    :try_start_0
    check-cast p1, Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 211
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    const-string v0, "android.intent.action.GPSTurnedOnResult"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$LocalBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$LocalBroadcastReceiver;

    .line 217
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1942
    :cond_0
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDay:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 223
    iget-object p3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 224
    iput p3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setCount:I

    const v0, 0x7f0c0070

    .line 225
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->rootView:Landroid/view/View;

    .line 226
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->init()V

    .line 227
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 228
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getData(Landroid/os/Bundle;)V

    .line 229
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setListeners()V

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onCropchangeListener(I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1742
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->farmerId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->dos:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1743
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mDatetext:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->dos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1747
    const-string v0, "ChildAttributeFragment"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 242
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 243
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setsData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 244
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 1859
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Longitude"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1860
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1861
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1862
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1863
    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 1864
    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 1865
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1866
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1867
    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 1868
    check-cast v7, Landroid/widget/EditText;

    .line 1869
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1870
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

    .line 1871
    :cond_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1872
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

    .line 1883
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->locationView:Landroid/view/View;

    return-void
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 288
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 255
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 249
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 236
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

    .line 677
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_9

    move-object/from16 v6, p1

    .line 678
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 700
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

    .line 701
    :try_start_1
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 704
    :try_start_2
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 706
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 709
    :try_start_4
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 711
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-eqz v16, :cond_3

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 714
    :try_start_6
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 717
    :try_start_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 722
    :cond_4
    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 723
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 726
    :try_start_8
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 728
    :goto_3
    :try_start_9
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-eqz v16, :cond_7

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 731
    :try_start_a
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

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

    .line 734
    :try_start_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 740
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

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 920
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 921
    monitor-enter p0

    .line 922
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 923
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    if-eqz p2, :cond_2

    .line 925
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 927
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

    .line 929
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSequenceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 931
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    goto :goto_0

    :cond_1
    return-object p1

    .line 939
    :cond_2
    new-instance p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 923
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public testMethod()V
    .locals 13

    .line 426
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityAssignmentId:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->parentAttributeId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsChildActivity(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityId:I

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->transId:J

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->parentAttributeId:I

    invoke-virtual/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsChildActivitySA(Ljava/lang/String;IJI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 430
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityId:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->isPlanned:I

    iget v7, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->assignmentID:I

    iget v9, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->segmentId:I

    iget-wide v10, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->transId:J

    iget v12, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityAssignmentId:I

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v12}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsWithSequenceId(Ljava/util/List;Ljava/lang/String;IIIIIIJI)V

    .line 431
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->insertListAttributes:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->activityId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addAudianceFarmerDetails(Ljava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 433
    const-string v1, "ChildAttributeFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->onDestroy()V

    .line 437
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->childAttributeLevelListener:Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;->addOrDeleteTab(IIILjava/lang/String;)V

    :cond_0
    return-void
.end method

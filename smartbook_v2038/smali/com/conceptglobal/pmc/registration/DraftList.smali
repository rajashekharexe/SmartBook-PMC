.class public Lcom/conceptglobal/pmc/registration/DraftList;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "DraftList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/IFragmentToActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/registration/DraftList$SingleTapConfirm;,
        Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;
    }
.end annotation


# static fields
.field public static final SURVEY_CONTEXT_ADD_FARMER:I = 0x65

.field private static final TAG:Ljava/lang/String; = "DraftList"

.field private static farmerType:Ljava/lang/String;


# instance fields
.field public ACTIVITYNAME:Ljava/lang/String;

.field public ActivityAssignmentId:I

.field public AssignmentId:I

.field public PackageId:I

.field public ShowDraft:I

.field private context:Landroid/content/Context;

.field private counter:I

.field private dLST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;",
            ">;"
        }
    .end annotation
.end field

.field private fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private globalView:Lcom/conceptglobal/pmc/utils/CircleImageView;

.field private inDragMode:Z

.field private initViewX:I

.field private initViewY:I

.field private initX:I

.field private initY:I

.field private isEligibletoAdd:Z

.field public isFromFeedBack:Z

.field public isFromSelfAssignment:Z

.field public isFromSurvey:Z

.field public isFromTestmonial:Z

.field public isFromTodo:I

.field private mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field private mContext:Landroid/content/Context;

.field private mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

.field private mPagerAdapter:Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private newX:I

.field private newY:I

.field private screenHight:I

.field private screenWidth:I

.field public segmentId:I

.field private showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

.field private tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

.field private vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 95
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->dLST:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->counter:I

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isEligibletoAdd:Z

    return-void
.end method

.method private StartOverlayFragment()V
    .locals 3

    .line 659
    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v1, "Farmer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mPagerAdapter:Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    .line 661
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fragmentCommunication()V

    goto :goto_0

    .line 662
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v2, "Planter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mPagerAdapter:Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    .line 664
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fragmentCommunication()V

    goto :goto_0

    .line 665
    :cond_1
    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v2, "Village"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mPagerAdapter:Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    .line 668
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fragmentCommunication()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 674
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mPagerAdapter:Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    .line 675
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fragmentCommunication()V

    :goto_0
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/registration/DraftList;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->initViewY:I

    return p0
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/registration/DraftList;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->initViewY:I

    return p1
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/registration/DraftList;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->newX:I

    return p0
.end method

.method static synthetic access$1102(Lcom/conceptglobal/pmc/registration/DraftList;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->newX:I

    return p1
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/registration/DraftList;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->newY:I

    return p0
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/registration/DraftList;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->newY:I

    return p1
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/registration/DraftList;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->screenWidth:I

    return p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/registration/DraftList;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->screenHight:I

    return p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/registration/DraftList;)Lcom/conceptglobal/pmc/utils/CircleImageView;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->globalView:Lcom/conceptglobal/pmc/utils/CircleImageView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/registration/DraftList;)Landroid/view/WindowManager;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/registration/DraftList;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->counter:I

    return p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/registration/DraftList;)Lcom/conceptglobal/pmc/views/CustomViewPager;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/registration/DraftList;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->StartOverlayFragment()V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/registration/DraftList;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->showMobileSearchDialog()V

    return-void
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/registration/DraftList;)Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/registration/DraftList;)Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;)Z
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/registration/DraftList;->isValidMobileNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;)Z
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/registration/DraftList;->isValidMobileNumberWithExp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/registration/DraftList;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/registration/DraftList;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->showRetailerMobileSearchDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/registration/DraftList;->navigateToDestinationActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/registration/DraftList;)Landroid/view/GestureDetector;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/registration/DraftList;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->inDragMode:Z

    return p0
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/registration/DraftList;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->inDragMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/registration/DraftList;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->initX:I

    return p0
.end method

.method static synthetic access$702(Lcom/conceptglobal/pmc/registration/DraftList;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->initX:I

    return p1
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/registration/DraftList;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->initY:I

    return p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/registration/DraftList;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->initY:I

    return p1
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/registration/DraftList;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->initViewX:I

    return p0
.end method

.method static synthetic access$902(Lcom/conceptglobal/pmc/registration/DraftList;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->initViewX:I

    return p1
.end method

.method private addFView()V
    .locals 8

    .line 435
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->windowManager:Landroid/view/WindowManager;

    .line 436
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 437
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 438
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->screenWidth:I

    .line 439
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->screenHight:I

    const/4 v0, 0x0

    .line 440
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->inDragMode:Z

    .line 441
    new-instance v0, Lcom/conceptglobal/pmc/utils/CircleImageView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/CircleImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->globalView:Lcom/conceptglobal/pmc/utils/CircleImageView;

    const v1, 0x7f08015b

    .line 442
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setImageResource(I)V

    .line 443
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->globalView:Lcom/conceptglobal/pmc/utils/CircleImageView;

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setBackgroundResource(I)V

    .line 444
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    const/16 v2, 0x32

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v4

    const/16 v6, 0x8

    const/4 v7, -0x3

    const/16 v5, 0x7d2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x55

    .line 445
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0xf

    .line 446
    iget-object v2, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0x78

    .line 447
    iget-object v2, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 448
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->globalView:Lcom/conceptglobal/pmc/utils/CircleImageView;

    new-instance v2, Lcom/conceptglobal/pmc/registration/DraftList$3;

    invoke-direct {v2, p0, v0}, Lcom/conceptglobal/pmc/registration/DraftList$3;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 481
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/conceptglobal/pmc/registration/DraftList;->globalView:Lcom/conceptglobal/pmc/utils/CircleImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private init()V
    .locals 7

    const v0, 0x7f0902f1

    .line 281
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/registration/DraftList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/views/CustomViewPager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    const v0, 0x7f0902f0

    .line 282
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/registration/DraftList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    .line 283
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    new-instance v2, Lcom/conceptglobal/pmc/registration/DraftList$SingleTapConfirm;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/conceptglobal/pmc/registration/DraftList$SingleTapConfirm;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;Lcom/conceptglobal/pmc/registration/DraftList$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->gestureDetector:Landroid/view/GestureDetector;

    .line 284
    new-instance v0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/registration/DraftList;->dLST:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mPagerAdapter:Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;

    .line 285
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 286
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;

    iget-object v2, p0, Lcom/conceptglobal/pmc/registration/DraftList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-direct {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setTabIndicatorFactory(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;)V

    .line 290
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    new-instance v1, Lcom/conceptglobal/pmc/registration/DraftList$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/registration/DraftList$1;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/CustomViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const v0, 0x7f0901de

    .line 305
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/registration/DraftList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 306
    new-instance v1, Lcom/conceptglobal/pmc/registration/DraftList$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/registration/DraftList$2;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    const/4 v1, 0x1

    const/16 v2, 0x8

    const-string v3, "Distributor"

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    .line 320
    :cond_2
    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v1, "Village"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    .line 322
    invoke-direct {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->StartOverlayFragment()V

    .line 328
    :cond_3
    :try_start_0
    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Retailer"

    const-string v4, "Dealer"

    if-nez v0, :cond_4

    :try_start_1
    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 330
    :cond_4
    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v5, 0x1

    if-nez v0, :cond_7

    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 332
    :cond_5
    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 333
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v3, "IsNotRequireAddRetailer"

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 334
    invoke-direct {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->validateRetailerAddtionStatus()V

    .line 335
    iget-boolean v3, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isEligibletoAdd:Z

    if-nez v3, :cond_8

    move-wide v0, v5

    goto :goto_1

    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 331
    :cond_7
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v3, "IsNotRequireAddDistributor"

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    :cond_8
    :goto_1
    cmp-long v3, v0, v5

    if-nez v3, :cond_9

    .line 340
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_2
    return-void
.end method

.method public static isValidGSTNo(Ljava/lang/String;)Z
    .locals 1

    .line 1224
    const-string v0, "^[0-9]{2}[A-Za-z]{5}[0-9]{4}[A-Za-z]{1}[1-9A-Za-z]{1}[Zz]{1}[0-9A-Za-z]{1}$"

    .line 1227
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1238
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1242
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private isValidMobileNumber(Ljava/lang/String;)Z
    .locals 1

    .line 912
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isValidMobileNumberWithExp(Ljava/lang/String;)Z
    .locals 2

    .line 920
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 921
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 922
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 923
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static isValidPANNo(Ljava/lang/String;)Z
    .locals 1

    .line 1246
    const-string v0, "[A-Z]{5}[0-9]{4}[A-Z]{1}"

    .line 1248
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1253
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1255
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setBottomViewPadding$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 1277
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const v1, 0x1020013

    .line 1280
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TabWidget;

    if-eqz p0, :cond_0

    .line 1283
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingLeft()I

    move-result v1

    .line 1284
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingTop()I

    move-result v2

    .line 1285
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingRight()I

    move-result v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 1282
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/TabWidget;->setPadding(IIII)V

    :cond_0
    return-object p1
.end method

.method private navigateToDestinationActivity(Ljava/lang/String;)V
    .locals 3

    .line 356
    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v0, "Farmer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "farmerType"

    if-eqz p1, :cond_0

    .line 357
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 359
    :cond_0
    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v0, "Retailer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 360
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 362
    :cond_1
    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v0, "Planter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 363
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 365
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 366
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    const-string v0, "Village"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 368
    :cond_3
    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v0, "Distributor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v2, "Dealer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    .line 369
    :cond_5
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/high16 v0, 0x4000000

    .line 372
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 373
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 374
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->finish()V

    return-void
.end method

.method private setBottomViewPadding()V
    .locals 2

    .line 1276
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    new-instance v1, Lcom/conceptglobal/pmc/registration/DraftList$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/registration/DraftList$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;Ljava/lang/String;)V
    .locals 9

    .line 847
    const-string v0, "FarmerMaster"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    const-string v1, "Farmer available in your Territory"

    const-string v2, "Update Farmer"

    goto :goto_0

    .line 852
    :cond_0
    const-string v1, "Farmer available in your Region, but not in this Territory"

    const-string v2, "Close"

    .line 854
    :goto_0
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 855
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v4, 0x7f0c0058

    .line 856
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    const v4, 0x7f0904a4

    .line 857
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090241

    .line 858
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v5, 0x7f0900aa

    .line 859
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f090098

    .line 860
    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 861
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 862
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 863
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 865
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 866
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10020d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "   : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getFarmerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f100218

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nMandal Name    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getTerritory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nVillage Name     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getVillage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    new-instance v0, Lcom/conceptglobal/pmc/registration/DraftList$9;

    invoke-direct {v0, p0, p2, p1, v3}, Lcom/conceptglobal/pmc/registration/DraftList$9;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;Landroid/app/Dialog;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 897
    new-instance p1, Lcom/conceptglobal/pmc/registration/DraftList$10;

    invoke-direct {p1, p0, v3}, Lcom/conceptglobal/pmc/registration/DraftList$10;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;Landroid/app/Dialog;)V

    invoke-virtual {v6, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 903
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 904
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 905
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 906
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 907
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 908
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showMobileSearchDialog()V
    .locals 5

    .line 683
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 684
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c005d

    .line 685
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090173

    .line 686
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f090095

    .line 689
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0900b8

    .line 690
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 691
    const-string v4, "Search Farmer"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 693
    new-instance v4, Lcom/conceptglobal/pmc/registration/DraftList$5;

    invoke-direct {v4, p0, v1, v0}, Lcom/conceptglobal/pmc/registration/DraftList$5;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    new-instance v1, Lcom/conceptglobal/pmc/registration/DraftList$6;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/registration/DraftList$6;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 721
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v4}, Landroid/view/Window;->setLayout(II)V

    .line 722
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 723
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 724
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 726
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 799
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 800
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 801
    new-instance p1, Lcom/conceptglobal/pmc/registration/DraftList$7;

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/pmc/registration/DraftList$7;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;)V

    const-string p2, "Add Farmer"

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 830
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100050

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/conceptglobal/pmc/registration/DraftList$8;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/registration/DraftList$8;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 835
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 836
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 837
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showRetailerDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;Ljava/lang/String;)V
    .locals 9

    .line 1117
    const-string v0, "DealerMaster"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    const-string v1, "Retailer/Distributor available in your Territory"

    const-string v2, "Update Retailer/Distributor"

    goto :goto_0

    .line 1122
    :cond_0
    const-string v1, "Retailer/Distributor available in your Region, but not in this Territory"

    const-string v2, "Close"

    .line 1125
    :goto_0
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 1126
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v4, 0x7f0c0058

    .line 1127
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    const v4, 0x7f0904a4

    .line 1128
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090241

    .line 1129
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v5, 0x7f0900aa

    .line 1130
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f090098

    .line 1131
    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1132
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1134
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 1136
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1137
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10021a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "   : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getRetailerShopName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100218

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getMobileNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f100219

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getPanno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nMandal Name    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getTerritory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nVillage Name     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getVillage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1137
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    new-instance v0, Lcom/conceptglobal/pmc/registration/DraftList$15;

    invoke-direct {v0, p0, p2, p1, v3}, Lcom/conceptglobal/pmc/registration/DraftList$15;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;Landroid/app/Dialog;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    new-instance p1, Lcom/conceptglobal/pmc/registration/DraftList$16;

    invoke-direct {p1, p0, v3}, Lcom/conceptglobal/pmc/registration/DraftList$16;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;Landroid/app/Dialog;)V

    invoke-virtual {v6, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1184
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 1185
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1186
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1187
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1188
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showRetailerMobileSearchDialog()V
    .locals 7

    .line 933
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 934
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c005d

    .line 935
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090173

    .line 936
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f09016e

    .line 937
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 938
    iget-object v3, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailer_dialog_hint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 939
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    const v4, 0x7f090095

    .line 942
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f0900b8

    .line 943
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 944
    const-string v6, "Search Retailer/Distributor"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 945
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 947
    new-instance v6, Lcom/conceptglobal/pmc/registration/DraftList$11;

    invoke-direct {v6, p0, v1, v2, v0}, Lcom/conceptglobal/pmc/registration/DraftList$11;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1015
    new-instance v1, Lcom/conceptglobal/pmc/registration/DraftList$12;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/registration/DraftList$12;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;Landroid/app/Dialog;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1022
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1023
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v4}, Landroid/view/Window;->setLayout(II)V

    .line 1024
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1025
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1026
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1027
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1028
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showRetailerNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1069
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1070
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/registration/DraftList$13;

    invoke-direct {v1, p0, p2, p3}, Lcom/conceptglobal/pmc/registration/DraftList$13;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Add"

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1100
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100050

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/conceptglobal/pmc/registration/DraftList$14;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/registration/DraftList$14;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1106
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1107
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showWalkthrough()V
    .locals 4

    .line 620
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setEnabled(Z)V

    .line 622
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 623
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 624
    new-instance v1, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    invoke-direct {v1, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;-><init>(Landroid/app/Activity;)V

    new-instance v2, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;

    iget-object v3, p0, Lcom/conceptglobal/pmc/registration/DraftList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    invoke-direct {v2, v3}, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;-><init>(Landroid/view/View;)V

    .line 625
    invoke-virtual {v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ADD "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 626
    invoke-virtual {v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Click Here to add "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 627
    invoke-virtual {v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v1

    .line 628
    invoke-virtual {v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->withMaterialShowcase()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/registration/DraftList$4;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/registration/DraftList$4;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;)V

    .line 629
    invoke-virtual {v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v1

    .line 653
    invoke-virtual {v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->build()Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 654
    invoke-virtual {v1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setButtonPosition(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 655
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private validateRetailerAddtionStatus()V
    .locals 5

    .line 1260
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "RetailerNonAddtionRoleIDs"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithActiveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1261
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 1262
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1263
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1264
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 1265
    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1266
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isEligibletoAdd:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public checkFarmerInTerritory(Ljava/lang/String;)V
    .locals 6

    .line 731
    const-string v0, "\'"

    .line 0
    const-string v1, "SELECT Mobile FROM PMCTerritoryFarmerMaster where  Mobile =\'"

    const-string v2, "SELECT Mobile FROM FarmerMaster where  Mobile = \'"

    .line 731
    :try_start_0
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/Encryption;->encryptRemovenewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 735
    iget-object v4, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v2

    .line 736
    iget-object v4, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    .line 737
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryFarmerQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryFarmereDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;

    move-result-object v0

    if-eqz v2, :cond_0

    .line 739
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryFarmerQryInFarmerMaster(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSearchFarmereDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;

    move-result-object p1

    .line 740
    const-string v0, "FarmerMaster"

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/registration/DraftList;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;Ljava/lang/String;)V

    goto :goto_0

    .line 741
    :cond_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getFarmerID()I

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    const-string p1, "TerritoryFarmerMaster"

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/pmc/registration/DraftList;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;Ljava/lang/String;)V

    goto :goto_0

    .line 744
    :cond_1
    const-string v0, "No Farmer data found."

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/pmc/registration/DraftList;->showNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 747
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public checkGSTExistOrNot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SELECT PANNo FROM DealerMaster where  PANNo = \'"

    .line 756
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' and (IsActive=1 or IsActive=\'True\')"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryRetailerQry1WithGst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDealerDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;

    move-result-object p1

    .line 760
    const-string p2, "DealerMaster"

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/registration/DraftList;->showRetailerDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :cond_0
    const-string v0, "No Retailer/Distributor data found."

    invoke-direct {p0, v0, p1, p2}, Lcom/conceptglobal/pmc/registration/DraftList;->showRetailerNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 766
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public checkIsRetailerMobileExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "SELECT MobileNumber FROM DealerMaster where  MobileNumber = \'"

    .line 1054
    :try_start_0
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/Encryption;->encryptRemovenewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1057
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' and PANNo = \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' and CustomerTypeID = \'2\' "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result p2

    .line 1058
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryRetailerQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDealerDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 1059
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getContactId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getContactId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 1063
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkRetailerInTerritory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "SELECT MobileNumber FROM DealerMaster where  MobileNumber = \'"

    .line 1033
    :try_start_0
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/Encryption;->encryptRemovenewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    iget-object v2, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' and PANNo = \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' and CustomerTypeID = \'2\' "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v0

    .line 1038
    iget-object v2, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryRetailerQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDealerDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 1040
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryRetailerQry1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDealerDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;

    move-result-object p1

    .line 1041
    const-string p2, "DealerMaster"

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/registration/DraftList;->showRetailerDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;Ljava/lang/String;)V

    goto :goto_0

    .line 1042
    :cond_0
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getContactId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getContactId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1043
    const-string p1, "TerritoryDealerMaster"

    invoke-direct {p0, v2, p1}, Lcom/conceptglobal/pmc/registration/DraftList;->showRetailerDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;Ljava/lang/String;)V

    goto :goto_0

    .line 1045
    :cond_1
    const-string v0, "No Retailer/Distributor data found."

    invoke-direct {p0, v0, p1, p2}, Lcom/conceptglobal/pmc/registration/DraftList;->showRetailerNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public checkisGSTExistOrNot(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string p1, "SELECT VATNo FROM DealerMaster where  VATNo = \'"

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and (IsActive=1 or IsActive=\'True\')"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 779
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkisMfmsExistOrNot(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string p1, "SELECT PANNo FROM DealerMaster where  PANNo = \'"

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and (IsActive=1 or IsActive=\'True\')"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 793
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public communicateToFragment()V
    .locals 0

    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 350
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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1193
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x65

    .line 1194
    const-string v1, "Retailer"

    const-string v2, "Farmer"

    if-ne p1, v0, :cond_1

    .line 1195
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1196
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1198
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    const-string p2, "SEGMENTID"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    const-string p2, "isFrom"

    iget-boolean p3, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 1201
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/pmc/registration/DraftList;->setResult(ILandroid/content/Intent;)V

    .line 1202
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->finish()V

    goto :goto_1

    .line 1205
    :cond_1
    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1206
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mPagerAdapter:Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    .line 1207
    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 1208
    :cond_2
    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1209
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mPagerAdapter:Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    .line 1210
    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 1211
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v1, "Distributor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v1, "Dealer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1214
    :cond_4
    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v1, "Village"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1215
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mPagerAdapter:Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    .line 1216
    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 1212
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mPagerAdapter:Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    .line 1213
    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 136
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c009e

    .line 140
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/registration/DraftList;->setContentView(I)V

    .line 141
    iput-object p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    .line 143
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 145
    iput-object p0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mContext:Landroid/content/Context;

    .line 146
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 147
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 148
    const-string v0, "farmerType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    .line 150
    const-string v0, "segmentId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    .line 153
    :cond_0
    const-string v0, "FromSelfAssignment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    .line 156
    :cond_1
    const-string v0, "isFromTodo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTodo:I

    .line 159
    :cond_2
    const-string v0, "ShowDraft"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->ShowDraft:I

    .line 162
    :cond_3
    const-string v0, "FromTestmonial"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    .line 165
    :cond_4
    const-string v0, "FromFeedBack"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 166
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    .line 168
    :cond_5
    const-string v0, "FromSurvey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 169
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    .line 170
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PackageId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->PackageId:I

    .line 171
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->AssignmentId:I

    .line 172
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->ActivityAssignmentId:I

    .line 173
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ACTIVITYNAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->ACTIVITYNAME:Ljava/lang/String;

    .line 176
    :cond_6
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    if-eqz p1, :cond_7

    goto :goto_0

    .line 179
    :cond_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    sget-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSwipeTabsInDraftList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->dLST:Ljava/util/ArrayList;

    goto :goto_1

    .line 177
    :cond_8
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSwipeTabsInDraftListForSelfAssignment()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->dLST:Ljava/util/ArrayList;

    .line 182
    :goto_1
    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v0, "Farmer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const-string v1, "("

    const-string v2, ")"

    if-eqz p1, :cond_c

    .line 183
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v3, "Farmer Details("

    if-eq p1, v0, :cond_a

    .line 184
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 187
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 189
    :cond_a
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 192
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 195
    :cond_c
    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v3, "Retailer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 196
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v3, "Retailer Details("

    if-eq p1, v0, :cond_e

    .line 197
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailersDetailsText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 200
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 202
    :cond_e
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailersDetailsText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 205
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 208
    :cond_10
    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v3, "Planter"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 209
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v3, "Planter Details("

    if-eq p1, v0, :cond_12

    .line 210
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_11

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 213
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 215
    :cond_12
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_13

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 218
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 221
    :cond_14
    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v3, "Village"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 222
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v3, "Village Details("

    if-eq p1, v0, :cond_16

    .line 223
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addVillageText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_15

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 226
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addVillageText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 228
    :cond_16
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addVillageText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_17

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 231
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addVillageText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 260
    :cond_18
    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v3, "Distributor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_19

    sget-object p1, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const-string v3, "Dealer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 261
    :cond_19
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v3, "Distributor Details("

    if-eq p1, v0, :cond_1b

    .line 262
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailersDetailsText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 265
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_distributorDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto :goto_2

    .line 267
    :cond_1b
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailersDetailsText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1c

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto :goto_2

    .line 270
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_distributorDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 274
    :cond_1d
    :goto_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 410
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 416
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onPause()V

    .line 417
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->globalView:Lcom/conceptglobal/pmc/utils/CircleImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->globalView:Lcom/conceptglobal/pmc/utils/CircleImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 424
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 380
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 381
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/DraftList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 382
    const-string v1, "dataType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    const-string v2, "farmerType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/registration/DraftList;->farmerType:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 385
    const-string v3, "draft"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "newRecord"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    const-string v0, "notSent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 391
    :cond_1
    const-string v0, "rejected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 387
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 397
    :cond_4
    iget v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->ShowDraft:I

    if-ne v1, v2, :cond_5

    .line 398
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 400
    :cond_5
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setCurrentItem(I)V

    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 430
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onStart()V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

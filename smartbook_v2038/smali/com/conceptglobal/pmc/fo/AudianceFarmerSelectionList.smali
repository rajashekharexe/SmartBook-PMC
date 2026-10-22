.class public Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "AudianceFarmerSelectionList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/IFragmentToActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;,
        Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$SingleTapConfirm;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DraftList"


# instance fields
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

.field private farmerType:Ljava/lang/String;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private globalView:Lcom/conceptglobal/pmc/utils/CircleImageView;

.field private inDragMode:Z

.field private initViewX:I

.field private initViewY:I

.field private initX:I

.field private initY:I

.field public isFromSelfAssignment:Z

.field private mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field private mContext:Landroid/content/Context;

.field private mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

.field private mPagerAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private newX:I

.field private newY:I

.field private screenHight:I

.field private screenWidth:I

.field public segmentId:I

.field private showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

.field public sourceQry:Ljava/lang/String;

.field private tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

.field private vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 82
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->dLST:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->counter:I

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->sourceQry:Ljava/lang/String;

    return-void
.end method

.method private StartOverlayFragment()V
    .locals 3

    .line 592
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v1, "Farmer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mPagerAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    .line 594
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fragmentCommunication()V

    goto :goto_0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v2, "Planter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mPagerAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    .line 597
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fragmentCommunication()V

    goto :goto_0

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v2, "Village"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mPagerAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    .line 600
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fragmentCommunication()V

    goto :goto_0

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mPagerAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    .line 603
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fragmentCommunication()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showMobileSearchDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Ljava/lang/String;)Z
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->isValidMobileNumberWithExp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Landroid/content/Context;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showRetailerMobileSearchDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->navigateToDestinationActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->counter:I

    return p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Lcom/conceptglobal/pmc/views/CustomViewPager;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->StartOverlayFragment()V

    return-void
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Ljava/lang/String;)Z
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->isValidMobileNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private addFView()V
    .locals 8

    .line 366
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->windowManager:Landroid/view/WindowManager;

    .line 367
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 368
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 369
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->screenWidth:I

    .line 370
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->screenHight:I

    const/4 v0, 0x0

    .line 371
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->inDragMode:Z

    .line 372
    new-instance v0, Lcom/conceptglobal/pmc/utils/CircleImageView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/CircleImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->globalView:Lcom/conceptglobal/pmc/utils/CircleImageView;

    const v1, 0x7f08015b

    .line 373
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setImageResource(I)V

    .line 374
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->globalView:Lcom/conceptglobal/pmc/utils/CircleImageView;

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setBackgroundResource(I)V

    .line 375
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    const/16 v2, 0x32

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v4

    const/16 v6, 0x8

    const/4 v7, -0x3

    const/16 v5, 0x7d2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x55

    .line 376
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0xf

    .line 377
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0x78

    .line 378
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->convertDiptoPix(ILandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private init()V
    .locals 6

    .line 220
    const-string v0, "Distributor"

    const v1, 0x7f0902f1

    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/views/CustomViewPager;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    const v1, 0x7f0902f0

    .line 221
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    .line 223
    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->dLST:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mPagerAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;

    .line 224
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 225
    iget-boolean v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->isFromSelfAssignment:Z

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    new-instance v2, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-direct {v2, v3}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setTabIndicatorFactory(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;)V

    .line 229
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$1;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/views/CustomViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const v1, 0x7f0901de

    .line 244
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 245
    new-instance v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$2;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v2, "Village"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    .line 258
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->StartOverlayFragment()V

    .line 264
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Retailer"

    const-string v4, "Dealer"

    if-nez v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v3, "IsNotRequireAddRetailer"

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 267
    :cond_5
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

    :goto_1
    const-wide/16 v3, 0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_6

    .line 272
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method private isValidMobileNumber(Ljava/lang/String;)Z
    .locals 1

    .line 770
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

    .line 778
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[5-9][6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 779
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 780
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 781
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private navigateToDestinationActivity(Ljava/lang/String;)V
    .locals 3

    .line 289
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v0, "Farmer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "farmerType"

    if-eqz p1, :cond_0

    .line 290
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v0, "Retailer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 293
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 295
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v0, "Planter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 296
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 298
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 299
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    const-string v0, "Village"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 301
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v0, "Distributor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v2, "Dealer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    .line 302
    :cond_5
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/high16 v0, 0x4000000

    .line 305
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 307
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->finish()V

    return-void
.end method

.method private showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;Ljava/lang/String;)V
    .locals 9

    .line 713
    const-string v0, "FarmerMaster"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    const-string v1, "Farmer available in your Territory"

    const-string v2, "Update Farmer"

    goto :goto_0

    .line 718
    :cond_0
    const-string v1, "Farmer available in your Region, but not in this Territory"

    const-string v2, "Close"

    .line 720
    :goto_0
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 721
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v4, 0x7f0c0058

    .line 722
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    const v4, 0x7f0904a4

    .line 723
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090241

    .line 724
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v5, 0x7f0900aa

    .line 725
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f090098

    .line 726
    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 727
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 728
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 729
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 731
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 732
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getResources()Landroid/content/res/Resources;

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

    .line 733
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getResources()Landroid/content/res/Resources;

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

    .line 734
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getTerritory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nVillage Name     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getVillage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$8;

    invoke-direct {v0, p0, p2, p1, v3}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$8;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Ljava/lang/String;Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;Landroid/app/Dialog;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    new-instance p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$9;

    invoke-direct {p1, p0, v3}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$9;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Landroid/app/Dialog;)V

    invoke-virtual {v6, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 762
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 763
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 764
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 765
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 766
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showMobileSearchDialog()V
    .locals 5

    .line 611
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 612
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c005d

    .line 613
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090173

    .line 614
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f090095

    .line 617
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0900b8

    .line 618
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 619
    const-string v4, "Search Farmer"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 621
    new-instance v4, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$4;

    invoke-direct {v4, p0, v1, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$4;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$5;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$5;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 649
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v4}, Landroid/view/Window;->setLayout(II)V

    .line 650
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 651
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 652
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 654
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 681
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 682
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 683
    new-instance p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$6;

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$6;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Ljava/lang/String;)V

    const-string p2, "Add Farmer"

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 696
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100050

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$7;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$7;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 701
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 702
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 703
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showRetailerDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;Ljava/lang/String;)V
    .locals 9

    .line 890
    const-string v0, "DealerMaster"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    const-string v1, "Retailer/Distributor available in your Territory"

    const-string v2, "Update Retailer/Distributor"

    goto :goto_0

    .line 895
    :cond_0
    const-string v1, "Retailer/Distributor available in your Region, but not in this Territory"

    const-string v2, "Close"

    .line 898
    :goto_0
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 899
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v4, 0x7f0c0058

    .line 900
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    const v4, 0x7f0904a4

    .line 901
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090241

    .line 902
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v5, 0x7f0900aa

    .line 903
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f090098

    .line 904
    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 905
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 906
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 907
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 909
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 910
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getResources()Landroid/content/res/Resources;

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

    .line 911
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f100218

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nMandal Name    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getTerritory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nVillage Name     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getVillage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$14;

    invoke-direct {v0, p0, p2, p1, v3}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$14;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Ljava/lang/String;Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;Landroid/app/Dialog;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    new-instance p1, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$15;

    invoke-direct {p1, p0, v3}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$15;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Landroid/app/Dialog;)V

    invoke-virtual {v6, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 947
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 948
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 949
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 950
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 951
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 952
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showRetailerMobileSearchDialog()V
    .locals 6

    .line 791
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 792
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c005d

    .line 793
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090173

    .line 794
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f090095

    .line 797
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0900b8

    .line 798
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 799
    const-string v4, "Search Retailer/Distributor"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 800
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 802
    new-instance v5, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;

    invoke-direct {v5, p0, v1, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$11;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$11;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 830
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 831
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 832
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 833
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 834
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 835
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showRetailerNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 859
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 860
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$12;

    invoke-direct {v1, p0, p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$12;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Ljava/lang/String;)V

    const-string p2, "Add"

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 873
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100050

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$13;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$13;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 878
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 879
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 880
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showWalkthrough()V
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setEnabled(Z)V

    .line 555
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 556
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 557
    new-instance v1, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    invoke-direct {v1, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;-><init>(Landroid/app/Activity;)V

    new-instance v2, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->fab:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    invoke-direct {v2, v3}, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;-><init>(Landroid/view/View;)V

    .line 558
    invoke-virtual {v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ADD "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-virtual {v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Click Here to add "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 560
    invoke-virtual {v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v1

    .line 561
    invoke-virtual {v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->withMaterialShowcase()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$3;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$3;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V

    .line 562
    invoke-virtual {v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v1

    .line 586
    invoke-virtual {v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->build()Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 587
    invoke-virtual {v1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setButtonPosition(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 588
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public checkFarmerInTerritory(Ljava/lang/String;)V
    .locals 6

    .line 659
    const-string v0, "\'"

    .line 0
    const-string v1, "SELECT Mobile FROM PMCTerritoryFarmerMaster where  Mobile =\'"

    const-string v2, "SELECT Mobile FROM FarmerMaster where  Mobile = \'"

    .line 659
    :try_start_0
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/Encryption;->encryptRemovenewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 663
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v2

    .line 664
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    .line 665
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryFarmerQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryFarmereDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;

    move-result-object v0

    if-eqz v2, :cond_0

    .line 667
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryFarmerQryInFarmerMaster(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSearchFarmereDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;

    move-result-object p1

    .line 668
    const-string v0, "FarmerMaster"

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getFarmerID()I

    move-result v1

    if-eqz v1, :cond_1

    .line 670
    const-string p1, "TerritoryFarmerMaster"

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_1
    const-string v0, "No Farmer data found."

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 675
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public checkRetailerInTerritory(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SELECT MobileNumber FROM DealerMaster where  MobileNumber = \'"

    .line 840
    :try_start_0
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/Encryption;->encryptRemovenewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 843
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v0

    .line 844
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryRetailerQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDealerDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 846
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryRetailerQry1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDealerDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;

    move-result-object p1

    .line 847
    const-string v0, "DealerMaster"

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showRetailerDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;Ljava/lang/String;)V

    goto :goto_0

    .line 848
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

    .line 849
    const-string p1, "TerritoryDealerMaster"

    invoke-direct {p0, v2, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showRetailerDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;Ljava/lang/String;)V

    goto :goto_0

    .line 851
    :cond_1
    const-string v0, "No Retailer/Distributor data found."

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showRetailerNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 853
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public communicateToFragment()V
    .locals 0

    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 283
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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 957
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 958
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v1, "Farmer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mPagerAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    .line 960
    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v2, "Retailer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mPagerAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    .line 963
    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v2, "Distributor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v2, "Dealer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 965
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mPagerAdapter:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    .line 966
    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 113
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c009e

    .line 117
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->setContentView(I)V

    .line 118
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    .line 120
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 122
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 124
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 125
    const-string v0, "farmerType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    .line 127
    const-string v0, "SEGMENTID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->segmentId:I

    .line 130
    :cond_0
    const-string v0, "FromSelfAssignment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->isFromSelfAssignment:Z

    .line 133
    :cond_1
    const-string v0, "SourceQry"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->sourceQry:Ljava/lang/String;

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->sourceQry:Ljava/lang/String;

    const-string v0, "FarmerMaster"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "Retailer"

    const-string v1, "Farmer"

    if-eqz p1, :cond_3

    .line 137
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->sourceQry:Ljava/lang/String;

    const-string v2, "DealerMaster"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 139
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    .line 142
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->isFromSelfAssignment:Z

    if-eqz p1, :cond_5

    .line 143
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSwipeTabsInDraftListForSelfAssignment()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->dLST:Ljava/util/ArrayList;

    goto :goto_1

    .line 145
    :cond_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSwipeTabsInDraftList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->dLST:Ljava/util/ArrayList;

    .line 148
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x2

    const-string v2, "("

    const-string v3, ")"

    if-eqz p1, :cond_9

    .line 149
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v0, "Farmer Details("

    if-eq p1, v1, :cond_7

    .line 150
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 153
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 155
    :cond_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 158
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 161
    :cond_9
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 162
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v0, "Retailer Details("

    if-eq p1, v1, :cond_b

    .line 163
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailersDetailsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 166
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 168
    :cond_b
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailersDetailsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 171
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_retailerDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 174
    :cond_d
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v0, "Planter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 175
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v0, "Planter Details("

    if-eq p1, v1, :cond_f

    .line 176
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 179
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 181
    :cond_f
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 184
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 187
    :cond_11
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v0, "Village"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 188
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v0, "Village Details("

    if-eq p1, v1, :cond_13

    .line 189
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addVillageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 192
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addVillageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 194
    :cond_13
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addVillageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_14

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 197
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addVillageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 200
    :cond_15
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v0, "Distributor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const-string v0, "Dealer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 201
    :cond_16
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v0, "Distributor Details("

    if-eq p1, v1, :cond_18

    .line 202
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailersDetailsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_17

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_2

    .line 205
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_distributorDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto :goto_2

    .line 207
    :cond_18
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailersDetailsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_19

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto :goto_2

    .line 210
    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_distributorDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 214
    :cond_1a
    :goto_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 339
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

    .line 345
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onPause()V

    .line 346
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->globalView:Lcom/conceptglobal/pmc/utils/CircleImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->globalView:Lcom/conceptglobal/pmc/utils/CircleImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 355
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 312
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 313
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 314
    const-string v1, "dataType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    const-string v2, "farmerType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->farmerType:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    .line 317
    const-string v2, "draft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "newRecord"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    const-string v0, "notSent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 323
    :cond_1
    const-string v0, "rejected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 319
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 329
    :cond_4
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setCurrentItem(I)V

    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 361
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onStart()V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

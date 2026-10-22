.class public Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;
.super Landroid/app/Activity;
.source "RetailersDisplayActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private adapter:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;

.field private context:Landroid/content/Context;

.field private et_search:Landroid/widget/EditText;

.field private inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private lv_list:Landroid/widget/ListView;

.field private retailerNamesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/PmcRetailersModel;",
            ">;"
        }
    .end annotation
.end field

.field private tv_header:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const-string v0, "RetailersDisplayActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;)Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->adapter:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->et_search:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->retailerNamesList:Ljava/util/List;

    return-object p0
.end method

.method private getDataFromDataBase()V
    .locals 3

    .line 83
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getPmcRetailers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->retailerNamesList:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->retailerNamesList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->adapter:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;

    return-void
.end method

.method private init()V
    .locals 3

    .line 71
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f0901c6

    .line 72
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->et_search:Landroid/widget/EditText;

    const v0, 0x7f090539

    .line 73
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->tv_header:Landroid/widget/TextView;

    const v0, 0x7f0902e2

    .line 74
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->lv_list:Landroid/widget/ListView;

    .line 75
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->tv_header:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDealerInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->lv_list:Landroid/widget/ListView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setSearch()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->lv_list:Landroid/widget/ListView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setToAdapter()V
    .locals 3

    .line 92
    new-instance v0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->retailerNamesList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->adapter:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;

    .line 93
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->lv_list:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->lv_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->adapter:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->requestWindowFeature(I)Z

    .line 53
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const p1, 0x7f0c00d4

    .line 54
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->setContentView(I)V

    .line 55
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->context:Landroid/content/Context;

    .line 56
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->init()V

    .line 59
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->getDataFromDataBase()V

    .line 60
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->setToAdapter()V

    .line 61
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->setListeners()V

    .line 62
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->setSearch()V

    return-void
.end method

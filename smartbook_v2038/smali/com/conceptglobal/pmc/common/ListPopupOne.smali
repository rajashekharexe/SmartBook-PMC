.class public Lcom/conceptglobal/pmc/common/ListPopupOne;
.super Landroid/app/Dialog;
.source "ListPopupOne.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

.field private cropChangedListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

.field private edtSearch:Landroid/widget/EditText;

.field private ids:Ljava/lang/String;

.field private layout:Landroid/widget/LinearLayout;

.field private listView:Landroid/widget/ListView;

.field private lookupdata:[[Ljava/lang/String;

.field private lookupdataFiltered:[[Ljava/lang/String;

.field private names:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field setcontext:Landroid/content/Context;

.field private tvCustomPopuphead:Landroid/widget/TextView;

.field private tvset:Landroid/widget/TextView;

.field private tvsetid:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1

    const v0, 0x1030010

    .line 53
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->searchString:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->setcontext:Landroid/content/Context;

    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/conceptglobal/pmc/common/ListPopupOne;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Lcom/conceptglobal/pmc/interfaces/CropChanger;)V
    .locals 1

    const v0, 0x1030010

    .line 65
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->searchString:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->setcontext:Landroid/content/Context;

    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/conceptglobal/pmc/common/ListPopupOne;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 68
    iput-object p6, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->cropChangedListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/common/ListPopupOne;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->tvset:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/common/ListPopupOne;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->tvsetid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/common/ListPopupOne;)[[Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->lookupdataFiltered:[[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/common/ListPopupOne;[[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->lookupdataFiltered:[[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/common/ListPopupOne;)Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->adapter:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    return-object p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/common/ListPopupOne;Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;)Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->adapter:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/common/ListPopupOne;)Landroid/widget/ListView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/common/ListPopupOne;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/common/ListPopupOne;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->names:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/common/ListPopupOne;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->names:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/common/ListPopupOne;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->ids:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/conceptglobal/pmc/common/ListPopupOne;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->ids:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/common/ListPopupOne;)[[Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->lookupdata:[[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/common/ListPopupOne;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->searchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/conceptglobal/pmc/common/ListPopupOne;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 2

    .line 73
    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->tvset:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 75
    iput-object p5, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->tvsetid:Landroid/widget/TextView;

    .line 76
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->lookupdata:[[Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->lookupdataFiltered:[[Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 p4, 0x1

    .line 79
    invoke-virtual {p0, p4}, Lcom/conceptglobal/pmc/common/ListPopupOne;->requestWindowFeature(I)Z

    const p4, 0x7f0c0084

    const/4 p5, 0x0

    .line 80
    invoke-virtual {p3, p4, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const p4, 0x7f090299

    .line 81
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->layout:Landroid/widget/LinearLayout;

    const p4, 0x7f0900d2

    .line 82
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Button;

    const p5, 0x7f0900d6

    .line 83
    invoke-virtual {p3, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/Button;

    const v1, 0x7f0901c7

    .line 84
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->edtSearch:Landroid/widget/EditText;

    .line 85
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 87
    new-instance v1, Lcom/conceptglobal/pmc/common/ListPopupOne$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/common/ListPopupOne$1;-><init>(Lcom/conceptglobal/pmc/common/ListPopupOne;)V

    invoke-virtual {p5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance p5, Lcom/conceptglobal/pmc/common/ListPopupOne$2;

    invoke-direct {p5, p0}, Lcom/conceptglobal/pmc/common/ListPopupOne$2;-><init>(Lcom/conceptglobal/pmc/common/ListPopupOne;)V

    invoke-virtual {p4, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p4, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->edtSearch:Landroid/widget/EditText;

    new-instance p5, Lcom/conceptglobal/pmc/common/ListPopupOne$3;

    invoke-direct {p5, p0}, Lcom/conceptglobal/pmc/common/ListPopupOne$3;-><init>(Lcom/conceptglobal/pmc/common/ListPopupOne;)V

    invoke-virtual {p4, p5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    const/4 p5, -0x1

    invoke-direct {p4, p5, p5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, p4}, Lcom/conceptglobal/pmc/common/ListPopupOne;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p4, 0x7f090489

    .line 131
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->tvCustomPopuphead:Landroid/widget/TextView;

    .line 132
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object p3, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->lookupdata:[[Ljava/lang/String;

    invoke-direct {p2, p0, p3}, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;-><init>(Lcom/conceptglobal/pmc/common/ListPopupOne;[[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->adapter:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    .line 134
    new-instance p2, Landroid/widget/ListView;

    invoke-direct {p2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->listView:Landroid/widget/ListView;

    const p1, 0xfffffff

    .line 135
    filled-new-array {v0, p1, v0}, [I

    move-result-object p1

    .line 136
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    sget-object p4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {p3, p4, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 138
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 139
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 140
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->listView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->adapter:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->lookupdata:[[Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length p1, p1

    const/4 p2, 0x5

    if-gt p1, p2, :cond_0

    .line 142
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->edtSearch:Landroid/widget/EditText;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->layout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->listView:Landroid/widget/ListView;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, p5, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 61
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne;->tvset:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

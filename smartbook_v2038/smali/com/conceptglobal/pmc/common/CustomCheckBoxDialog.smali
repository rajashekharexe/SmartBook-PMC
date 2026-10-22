.class public Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;
.super Landroid/app/Dialog;
.source "CustomCheckBoxDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomCheckBoxDialog"


# instance fields
.field private activityId:I

.field private attributeId:I

.field private edtSearch:Landroid/widget/EditText;

.field private filteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/BrandsModel;",
            ">;"
        }
    .end annotation
.end field

.field private isDisplayCount:I

.field private ismba:I

.field layout:Landroid/widget/LinearLayout;

.field listView:Landroid/widget/ListView;

.field mAdapter:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

.field private maxLength:I

.field private rawListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/BrandsModel;",
            ">;"
        }
    .end annotation
.end field

.field private searchString:Ljava/lang/String;

.field setcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/BrandsModel;",
            ">;I",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    const v0, 0x1030010

    .line 59
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->listView:Landroid/widget/ListView;

    .line 48
    iput-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->layout:Landroid/widget/LinearLayout;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->rawListItems:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->filteredList:Ljava/util/List;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->searchString:Ljava/lang/String;

    .line 60
    iput p8, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->activityId:I

    .line 61
    iput p9, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->attributeId:I

    .line 62
    invoke-direct/range {p0 .. p6}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->init(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 63
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->setcontext:Landroid/content/Context;

    .line 64
    iput p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->ismba:I

    .line 65
    iput p7, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->maxLength:I

    .line 66
    iput-object p2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->rawListItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->filteredList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->filteredList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->isDisplayCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->maxLength:I

    return p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->maxLength:I

    return p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->rawListItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->searchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method private init(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/BrandsModel;",
            ">;I",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x0

    .line 71
    invoke-virtual {p5, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c0084

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090299

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->layout:Landroid/widget/LinearLayout;

    .line 77
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0900d2

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v3, 0x7f0900d6

    .line 79
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f0901c7

    .line 81
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->edtSearch:Landroid/widget/EditText;

    .line 83
    new-instance v4, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$1;

    invoke-direct {v4, p0, p6, p5}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$1;-><init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance v3, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$2;

    invoke-direct {v3, p0, p5, p6}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$2;-><init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->edtSearch:Landroid/widget/EditText;

    new-instance v3, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;

    invoke-direct {v3, p0, p5, p6}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;-><init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v1, 0x7f090489

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    new-instance p4, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    invoke-direct {p4, p0, p2, p5, p6}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;-><init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Ljava/util/List;Landroid/view/View;Landroid/view/View;)V

    iput-object p4, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->mAdapter:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    .line 143
    new-instance p2, Landroid/widget/ListView;

    invoke-direct {p2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->listView:Landroid/widget/ListView;

    const p1, 0xfffffff

    .line 144
    filled-new-array {p3, p1, p3}, [I

    move-result-object p1

    .line 145
    new-instance p4, Landroid/graphics/drawable/GradientDrawable;

    sget-object p5, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {p4, p5, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p2, p4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 147
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 148
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 149
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->listView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->mAdapter:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->layout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->listView:Landroid/widget/ListView;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 152
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 154
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->activityId:I

    iget p4, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->attributeId:I

    invoke-virtual {p2, p3, p4}, Lcom/conceptglobal/pmc/common/Queries;->getMultiSelectCountDisplayValue(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->isDisplayCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->setcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
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

    new-instance v2, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$4;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$4;-><init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->setcontext:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

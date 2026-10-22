.class public Lcom/conceptglobal/pmc/fo/ListSelectionActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "ListSelectionActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListSelectionActivity"


# instance fields
.field private adapter:Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;

.field private arrFiledTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FieldTypes;",
            ">;"
        }
    .end annotation
.end field

.field private arrStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private edtSearch:Landroid/widget/EditText;

.field private farmerId:Ljava/lang/String;

.field isFromFeedback:Z

.field private lvcounties:Landroid/widget/ListView;

.field private nodata:Landroid/widget/LinearLayout;

.field preferences:Landroid/content/SharedPreferences;

.field private segmentID:I

.field private strQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 56
    const-string v0, "0"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->farmerId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->segmentID:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/ListSelectionActivity;)Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->adapter:Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/ListSelectionActivity;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->edtSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method private getSamplingData([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FieldTypes;",
            ">;"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 272
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 273
    new-instance v2, Lcom/conceptglobal/pmc/model/FieldTypes;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/model/FieldTypes;-><init>()V

    add-int/lit8 v3, v1, 0x1

    .line 274
    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/FieldTypes;->setId(I)V

    .line 275
    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/model/FieldTypes;->setName(Ljava/lang/String;)V

    .line 276
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getStaticData(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FieldTypes;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    const-string v1, "Third party"

    const-string v2, "NBHC"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 260
    :pswitch_1
    const-string p1, "DO1002"

    const-string v0, "DO1003"

    const-string v1, "DO1001"

    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSamplingData([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 256
    :pswitch_2
    const-string p1, "10111002"

    const-string v0, "10111003"

    const-string v1, "10111001"

    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSamplingData([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 251
    :pswitch_3
    const-string p1, "SP"

    const-string v0, "Normal"

    const-string v1, "CM"

    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSamplingData([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 247
    :pswitch_4
    const-string p1, "Exchange delivery"

    const-string v0, "Professional warehousing"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSamplingData([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 243
    :pswitch_5
    const-string p1, "Pre stacked"

    const-string v0, "CAD transfer"

    const-string v1, "Fresh deposit"

    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSamplingData([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 239
    :pswitch_6
    const-string p1, "Yes"

    const-string v0, "No"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSamplingData([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_7
    const-string p1, "Attached"

    const-string v0, "Not attaced"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSamplingData([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 229
    :pswitch_8
    const-string p1, "Owner"

    filled-new-array {v2, p1, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSamplingData([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 225
    :pswitch_9
    const-string p1, "Procom"

    const-string v0, "Barrower"

    filled-new-array {v2, p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSamplingData([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 221
    :pswitch_a
    const-string v8, "5 kg"

    const-string v9, "10 kg"

    const-string v1, "100 gm"

    const-string v2, "250 gm"

    const-string v3, "500 gm"

    const-string v4, "600 gm"

    const-string v5, "650 gm"

    const-string v6, "1 kg"

    const-string v7, "1.2 kg"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSamplingData([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 3

    const v0, 0x7f0902e5

    .line 84
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->lvcounties:Landroid/widget/ListView;

    const v0, 0x7f0901c6

    .line 85
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->edtSearch:Landroid/widget/EditText;

    .line 86
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_searchHereText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f09032a

    .line 87
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->nodata:Landroid/widget/LinearLayout;

    .line 88
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    const-string v1, "FarmerId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->farmerId:Ljava/lang/String;

    .line 90
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isFrom"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->isFromFeedback:Z

    .line 91
    const-string v1, "segmentId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->segmentID:I

    :cond_0
    return-void
.end method

.method private setActionBar()V
    .locals 4

    .line 103
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 104
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090591

    .line 109
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090581

    .line 110
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectActivityText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setData()V
    .locals 9

    .line 125
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 126
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->strQuery:Ljava/lang/String;

    .line 127
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/conceptglobal/pmc/common/Astat;->KEY_STATIC_LIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->arrStrings:Ljava/util/List;

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->arrFiledTypes:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/conceptglobal/pmc/common/Astat;->KEY_STATIC_LIST_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 133
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getStaticData(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->arrFiledTypes:Ljava/util/List;

    goto :goto_0

    .line 136
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->strQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFiledDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->arrFiledTypes:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    const-string v1, "ListSelectionActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->arrFiledTypes:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->arrFiledTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->arrStrings:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->arrFiledTypes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/FieldTypes;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FieldTypes;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :cond_1
    new-instance v0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->arrFiledTypes:Ljava/util/List;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->farmerId:Ljava/lang/String;

    iget v7, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->segmentID:I

    iget-boolean v8, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->isFromFeedback:Z

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->adapter:Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;

    .line 147
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->lvcounties:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->nodata:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->arrFiledTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_3

    .line 150
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->edtSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->lvcounties:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->edtSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->nodata:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->lvcounties:Landroid/widget/ListView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/ListSelectionActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/ListSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->edtSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/fo/ListSelectionActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/ListSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 117
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

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string p1, "PMCTheme"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->preferences:Landroid/content/SharedPreferences;

    const p1, 0x7f0c007c

    .line 70
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->setContentView(I)V

    .line 71
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->context:Landroid/content/Context;

    .line 72
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectActivityText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 74
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->init()V

    .line 75
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->setData()V

    .line 76
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->setListeners()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 288
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 298
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 290
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 291
    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_LIST_SELECTION:Ljava/lang/String;

    const-string v1, ""

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 292
    invoke-virtual {p0, v0, p1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 293
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOutOfBounds(Landroid/view/MotionEvent;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

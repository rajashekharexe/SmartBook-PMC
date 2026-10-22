.class public Lcom/conceptglobal/pmc/fo/List_Selection;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "List_Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/List_Selection$MoreAdapter;,
        Lcom/conceptglobal/pmc/fo/List_Selection$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "List_Selection"


# instance fields
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

.field private lvcounties:Landroid/widget/ListView;

.field private strQuery:Ljava/lang/String;

.field private tvBack:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/List_Selection;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->arrFiledTypes:Ljava/util/List;

    return-object p0
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0902e5

    .line 68
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/List_Selection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->lvcounties:Landroid/widget/ListView;

    return-void
.end method

.method private setData()V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/List_Selection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->strQuery:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->arrStrings:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->arrFiledTypes:Ljava/util/List;

    .line 80
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->strQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFiledDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->arrFiledTypes:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    const-string v1, "List_Selection"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->arrFiledTypes:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 85
    :goto_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->arrFiledTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->arrStrings:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->arrFiledTypes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/FieldTypes;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FieldTypes;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->lvcounties:Landroid/widget/ListView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/List_Selection$MoreAdapter;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->arrStrings:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lcom/conceptglobal/pmc/fo/List_Selection$MoreAdapter;-><init>(Lcom/conceptglobal/pmc/fo/List_Selection;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->lvcounties:Landroid/widget/ListView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/List_Selection$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/List_Selection$1;-><init>(Lcom/conceptglobal/pmc/fo/List_Selection;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 63
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
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/List_Selection;->requestWindowFeature(I)Z

    const p1, 0x7f0c007c

    .line 53
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/List_Selection;->setContentView(I)V

    .line 54
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->context:Landroid/content/Context;

    .line 55
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/List_Selection;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/List_Selection;->init()V

    .line 57
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/List_Selection;->setData()V

    .line 58
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/List_Selection;->setListeners()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 123
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

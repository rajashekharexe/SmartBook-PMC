.class public Lcom/conceptglobal/pmc/fo/ToDoActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "ToDoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ToDoActivity"


# instance fields
.field private context:Landroid/content/Context;

.field private isFrom:Ljava/lang/String;

.field public mFragments:[Landroidx/fragment/app/Fragment;

.field private mPagerAdapter:Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;

.field private tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

.field private toDoTabsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;",
            ">;"
        }
    .end annotation
.end field

.field private vp:Lcom/conceptglobal/pmc/views/CustomViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->toDoTabsList:Ljava/util/ArrayList;

    return-void
.end method

.method private intialize()V
    .locals 4

    const v0, 0x7f0902f1

    .line 136
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/views/CustomViewPager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    const v0, 0x7f0902f0

    .line 137
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    .line 138
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "ExpensesToDo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v1, 0x64

    .line 141
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->toDoTabsList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->isFrom:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;-><init>(Lcom/conceptglobal/pmc/fo/ToDoActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->mPagerAdapter:Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;

    .line 146
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 147
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-direct {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setTabIndicatorFactory(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;)V

    .line 148
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    new-instance v1, Lcom/conceptglobal/pmc/fo/ToDoActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/ToDoActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/ToDoActivity;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/CustomViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 132
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
    .locals 2

    .line 302
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    instance-of v1, v0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    if-eqz v1, :cond_1

    .line 307
    check-cast v0, Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 176
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 67
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0156

    .line 71
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->setContentView(I)V

    .line 72
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f060052

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 74
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Z)V

    .line 76
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 79
    invoke-static {p1, v0, v0}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;II)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f060051

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 86
    :cond_1
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->context:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "IsFrom"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->isFrom:Ljava/lang/String;

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->isFrom:Ljava/lang/String;

    const-string v1, "ExpensesToDo"

    const-string v2, "Survey"

    const/4 v3, 0x2

    const-string v4, ")"

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 91
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v5, "Planned Surveys("

    if-eq p1, v3, :cond_3

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_0

    .line 96
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_0

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->isFrom:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 99
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v5, "Expenses("

    if-eq p1, v3, :cond_5

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_0

    .line 104
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 107
    :cond_6
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const-string v5, "("

    if-eq p1, v3, :cond_7

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_toDoText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 112
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_toDoText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 115
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->isFrom:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 116
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveySwipeTabsInToDo()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->toDoTabsList:Ljava/util/ArrayList;

    goto :goto_1

    .line 117
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->isFrom:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 118
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getExpensesSwipeTabsInToDo()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->toDoTabsList:Ljava/util/ArrayList;

    goto :goto_1

    .line 120
    :cond_9
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSwipeTabsInToDo()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->toDoTabsList:Ljava/util/ArrayList;

    .line 123
    :goto_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 124
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->isFrom:Ljava/lang/String;

    .line 125
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "start "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "todo"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->intialize()V

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 288
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 295
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 171
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 165
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start onResume "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "todo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

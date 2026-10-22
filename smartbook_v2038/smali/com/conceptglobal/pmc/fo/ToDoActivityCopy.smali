.class public Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "ToDoActivityCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ToDoActivity"

.field public static fromComplaint:I


# instance fields
.field private context:Landroid/content/Context;

.field fab_todo_feedback:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

.field private isFrom:Ljava/lang/String;

.field private mPagerAdapter:Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;

.field private title:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->toDoTabsList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->title:Ljava/lang/String;

    return-object p0
.end method

.method private intialize()V
    .locals 4

    const v0, 0x7f0902f1

    .line 115
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/views/CustomViewPager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    const v0, 0x7f0902f0

    .line 116
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    .line 118
    new-instance v0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->toDoTabsList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->isFrom:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->mPagerAdapter:Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;

    .line 119
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    invoke-direct {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setTabIndicatorFactory(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;)V

    .line 121
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->tiv:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->vp:Lcom/conceptglobal/pmc/views/CustomViewPager;

    new-instance v1, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$2;-><init>(Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/CustomViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 111
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

    .line 150
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 55
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0159

    .line 59
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->setContentView(I)V

    .line 60
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->context:Landroid/content/Context;

    const p1, 0x7f0901e5

    .line 61
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->fab_todo_feedback:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const/16 v0, 0x8

    .line 62
    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    .line 63
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "IsFrom"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->isFrom:Ljava/lang/String;

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "Title"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->title:Ljava/lang/String;

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->isFrom:Ljava/lang/String;

    const-string v2, "FeedBack"

    const/4 v3, 0x2

    const-string v4, ")"

    const-string v5, "("

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 69
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->fab_todo_feedback:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    .line 70
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    if-eq p1, v3, :cond_2

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_0

    .line 75
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 78
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->fab_todo_feedback:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    .line 79
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    if-eq p1, v3, :cond_4

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_toDoText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_toDoText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 87
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->isFrom:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 88
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSwipeTabsInToDo_forFeedback()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->toDoTabsList:Ljava/util/ArrayList;

    .line 90
    :cond_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 91
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->isFrom:Ljava/lang/String;

    .line 92
    :cond_6
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

    .line 93
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->intialize()V

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->fab_todo_feedback:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    new-instance v0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$1;-><init>(Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 258
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 145
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 139
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 140
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

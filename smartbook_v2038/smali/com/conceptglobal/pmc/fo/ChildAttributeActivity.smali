.class public Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ChildAttributeActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/ChildAttributeLevelListener;


# static fields
.field public static ctx:Landroid/content/Context;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private activityAssignmentId:I

.field private activityId:I

.field private assignmentID:I

.field private context:Landroid/content/Context;

.field private countVillage:I

.field private currentLevel:I

.field private demoActivity:I

.field private displayType:Ljava/lang/String;

.field private farmerId:Ljava/lang/String;

.field private isPlanned:I

.field private isSelfassign:I

.field private ismba:I

.field public mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private mTabHost:Landroidx/fragment/app/FragmentTabHost;

.field private parentAttributeId:I

.field private segmentId:I

.field private transId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 34
    const-string v0, "ChildAttributeActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->countVillage:I

    .line 41
    const-string v0, "0"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->farmerId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;)Landroidx/fragment/app/FragmentTabHost;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->currentLevel:I

    return p0
.end method

.method private addTab(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, p1, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    const-string v2, "ISSELFASSIGN"

    iget v3, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->isSelfassign:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    const-string v2, "ParentAttributeId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string p2, "TRANSID"

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->transId:J

    invoke-virtual {v0, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 85
    const-string p2, "ActivityAssignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->activityAssignmentId:I

    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string p2, "SEGMENTID"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->segmentId:I

    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string p2, "Count"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string p2, "pairId"

    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string p2, "AssignmentId"

    iget p3, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->assignmentID:I

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->activityId:I

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->isPlanned:I

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string p2, "DISPLAYTYPE"

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->displayType:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->ismba:I

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->displayType:Ljava/lang/String;

    const-string p2, ""

    if-eqz p1, :cond_1

    const-string p3, "2"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    .line 105
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const-class p3, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;

    .line 104
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    .line 109
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const-class p3, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    .line 108
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private getData()V
    .locals 5

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 118
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->ismba:I

    .line 119
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->farmerId:Ljava/lang/String;

    .line 120
    const-string v1, "ISSELFASSIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->isSelfassign:I

    .line 121
    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->segmentId:I

    .line 122
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->activityId:I

    .line 123
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->isPlanned:I

    .line 124
    const-string v1, "ParentAttributeId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->parentAttributeId:I

    .line 125
    const-string v1, "TRANSID"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->transId:J

    .line 126
    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->activityAssignmentId:I

    .line 127
    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->assignmentID:I

    .line 128
    const-string v1, "DISPLAYTYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->displayType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 136
    const-string v1, "ChildAttributeActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 3

    const v0, 0x7f09041a

    .line 72
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    .line 73
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090373

    invoke-virtual {v0, p0, v1, v2}, Landroidx/fragment/app/FragmentTabHost;->setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method

.method private setData()V
    .locals 4

    const/4 v0, 0x1

    .line 64
    iput v0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->currentLevel:I

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "level "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->currentLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->parentAttributeId:I

    iget v2, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->countVillage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->addTab(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method public addOrDeleteTab(IIILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 157
    const-string v1, "clicked"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    if-eqz p2, :cond_0

    .line 158
    iget p1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->currentLevel:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->currentLevel:I

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "level "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->currentLevel:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->addTab(Ljava/lang/String;IILjava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    iget p2, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->currentLevel:I

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTabHost;->setCurrentTab(I)V

    .line 161
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 165
    :cond_1
    iget p1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->currentLevel:I

    if-ne p1, v2, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->finish()V

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p1, -0x1

    .line 168
    iput p3, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->currentLevel:I

    .line 169
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Landroidx/fragment/app/FragmentTabHost;->setCurrentTab(I)V

    .line 170
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->currentLevel:I

    invoke-virtual {p1, p2}, Landroid/widget/TabWidget;->removeViewAt(I)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.GPSTurnedOnResult"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c005e

    .line 51
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->setContentView(I)V

    .line 52
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->context:Landroid/content/Context;

    .line 53
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 54
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->init()V

    .line 56
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->getData()V

    .line 57
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->setData()V

    .line 58
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->setListeners()V

    .line 59
    sput-object p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->ctx:Landroid/content/Context;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 179
    const-string p2, "onRequestPermissionResult"

    const-string v0, "ChildAttributeActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 181
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 184
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 185
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 187
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.GPSTurnedOnResult"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

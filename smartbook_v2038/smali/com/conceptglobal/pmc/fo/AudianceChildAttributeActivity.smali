.class public Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AudianceChildAttributeActivity.java"

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

.field public selectedFarmers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation
.end field

.field private transId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 36
    const-string v0, "ChildAttributeActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->countVillage:I

    .line 43
    const-string v0, "0"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->farmerId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->selectedFarmers:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;)Landroidx/fragment/app/FragmentTabHost;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->currentLevel:I

    return p0
.end method

.method private addTab(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, p1, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v2, "ISSELFASSIGN"

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->isSelfassign:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v2, "ParentAttributeId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string p2, "TRANSID"

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->transId:J

    invoke-virtual {v0, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 88
    const-string p2, "ActivityAssignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->activityAssignmentId:I

    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string p2, "SEGMENTID"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->segmentId:I

    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string p2, "Count"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string p2, "pairId"

    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string p2, "AssignmentId"

    iget p3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->assignmentID:I

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->activityId:I

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->isPlanned:I

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string p2, "DISPLAYTYPE"

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->displayType:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->ismba:I

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->displayType:Ljava/lang/String;

    const-string p2, ""

    if-eqz p1, :cond_1

    const-string p3, "2"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    .line 108
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const-class p3, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;

    .line 107
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    .line 112
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const-class p3, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    .line 111
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private getData()V
    .locals 5

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->ismba:I

    .line 122
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->farmerId:Ljava/lang/String;

    .line 123
    const-string v1, "ISSELFASSIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->isSelfassign:I

    .line 124
    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->segmentId:I

    .line 125
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->activityId:I

    .line 126
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->isPlanned:I

    .line 127
    const-string v1, "ParentAttributeId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->parentAttributeId:I

    .line 128
    const-string v1, "TRANSID"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->transId:J

    .line 129
    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->activityAssignmentId:I

    .line 130
    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->assignmentID:I

    .line 131
    const-string v1, "DISPLAYTYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->displayType:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "FarmersData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->selectedFarmers:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    const-string v1, "ChildAttributeActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 3

    const v0, 0x7f09041a

    .line 75
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    .line 76
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090373

    invoke-virtual {v0, p0, v1, v2}, Landroidx/fragment/app/FragmentTabHost;->setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method

.method private setData()V
    .locals 4

    const/4 v0, 0x1

    .line 67
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->currentLevel:I

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "level "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->currentLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->parentAttributeId:I

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->countVillage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->addTab(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method public addOrDeleteTab(IIILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 161
    const-string v1, "clicked"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    if-eqz p2, :cond_0

    .line 162
    iget p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->currentLevel:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->currentLevel:I

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "level "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->currentLevel:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->addTab(Ljava/lang/String;IILjava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    iget p2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->currentLevel:I

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTabHost;->setCurrentTab(I)V

    .line 165
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 167
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 169
    :cond_1
    iget p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->currentLevel:I

    if-ne p1, v2, :cond_2

    .line 170
    new-instance p1, Landroid/content/Intent;

    const-string p2, "QUANTITY_REMAINS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 172
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->finish()V

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p1, -0x1

    .line 174
    iput p3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->currentLevel:I

    .line 175
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Landroidx/fragment/app/FragmentTabHost;->setCurrentTab(I)V

    .line 176
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->mTabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->currentLevel:I

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

    .line 212
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 207
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

    .line 52
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c005e

    .line 54
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->setContentView(I)V

    .line 55
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->context:Landroid/content/Context;

    .line 56
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 57
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->init()V

    .line 59
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->getData()V

    .line 60
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->setData()V

    .line 61
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->setListeners()V

    .line 62
    sput-object p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->ctx:Landroid/content/Context;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 185
    const-string p2, "onRequestPermissionResult"

    const-string v0, "ChildAttributeActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 187
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 190
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 191
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 193
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.GPSTurnedOnResult"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

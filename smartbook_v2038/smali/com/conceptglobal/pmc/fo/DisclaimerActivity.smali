.class public Lcom/conceptglobal/pmc/fo/DisclaimerActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "DisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DisclaimerActivity"


# instance fields
.field private btnagree:Landroid/widget/Button;

.field private btndisagree:Landroid/widget/Button;

.field private btninactive:Landroid/widget/Button;

.field private farmerID:I

.field private intentGetData:Landroid/content/Intent;

.field private villageID:I

.field private villageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->farmerID:I

    iput v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->villageID:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/DisclaimerActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->farmerID:I

    return p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/DisclaimerActivity;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->villageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/fo/DisclaimerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->villageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/DisclaimerActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->villageID:I

    return p0
.end method

.method private getData()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->intentGetData:Landroid/content/Intent;

    .line 64
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->farmerID:I

    .line 65
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->villageID:I

    return-void
.end method

.method private initialization()V
    .locals 1

    const v0, 0x7f090092

    .line 53
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->btnagree:Landroid/widget/Button;

    const v0, 0x7f09009a

    .line 54
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->btndisagree:Landroid/widget/Button;

    const v0, 0x7f0900a5

    .line 55
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->btninactive:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->btnagree:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->btndisagree:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->btninactive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setActionBar()V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->getIntent()Landroid/content/Intent;

    .line 72
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 73
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090591

    .line 78
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f090581

    .line 79
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showAlertCancel(Ljava/lang/String;I)V
    .locals 3

    .line 115
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/DisclaimerActivity;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 161
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/DisclaimerActivity;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 169
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 170
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 86
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

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090092

    if-eq p1, v0, :cond_2

    const v0, 0x7f09009a

    if-eq p1, v0, :cond_1

    const v0, 0x7f0900a5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    const-string p1, "Do You Want to InActive  ?"

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->showAlertCancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 103
    :cond_1
    const-string p1, "Do You Want to DisAgree  ?"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->showAlertCancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 95
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->farmerID:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->villageID:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0025

    .line 45
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->initialization()V

    .line 47
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->setActionBar()V

    .line 48
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->getData()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 185
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

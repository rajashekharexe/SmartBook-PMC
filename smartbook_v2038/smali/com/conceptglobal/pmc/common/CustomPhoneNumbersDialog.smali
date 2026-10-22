.class public Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;
.super Lcom/conceptglobal/imaterialdesign/app/Dialog;
.source "CustomPhoneNumbersDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomCheckBoxDialog"


# instance fields
.field context:Landroid/content/Context;

.field private mDialog:Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f1101f6

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-object p0, p0, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->mDialog:Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;

    .line 27
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->context:Landroid/content/Context;

    .line 28
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectNumTo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->title(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->cancelable(Z)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 29
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->negativeAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    const p1, 0x7f0c0083

    .line 30
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->contentView(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;)Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->mDialog:Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;

    return-object p0
.end method


# virtual methods
.method public showDialog(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog$1;-><init>(Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->negativeActionClickListener(Landroid/view/View$OnClickListener;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    const v0, 0x7f09028c

    .line 42
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09032c

    .line 43
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 46
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 48
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 52
    new-instance v1, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;

    iget-object v2, p0, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2}, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 53
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noNumFoundInDailOrSms()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 59
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->mDialog:Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->show()V

    return-void
.end method

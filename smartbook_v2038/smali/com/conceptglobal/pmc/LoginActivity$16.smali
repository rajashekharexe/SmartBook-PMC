.class Lcom/conceptglobal/pmc/LoginActivity$16;
.super Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/LoginActivity;->showLiveCustomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/LoginActivity;

.field final synthetic val$et_empty:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

.field final synthetic val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

.field final synthetic val$liveOrForgotPwd:Ljava/lang/String;

.field final synthetic val$mobilenumll:[Landroid/widget/LinearLayout;

.field final synthetic val$pin:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$tv_password:[Lcom/conceptglobal/imaterialdesign/widget/TextView;

.field final synthetic val$tv_title:[Lcom/conceptglobal/imaterialdesign/widget/TextView;

.field final synthetic val$tv_username:[Lcom/conceptglobal/imaterialdesign/widget/TextView;

.field final synthetic val$userdetailsll:[Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/LoginActivity;[Landroid/widget/LinearLayout;[Landroid/widget/LinearLayout;[Lcom/conceptglobal/imaterialdesign/widget/EditText;[Lcom/conceptglobal/imaterialdesign/widget/EditText;[Lcom/conceptglobal/imaterialdesign/widget/TextView;[Lcom/conceptglobal/imaterialdesign/widget/TextView;[Lcom/conceptglobal/imaterialdesign/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1864
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$mobilenumll:[Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$userdetailsll:[Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iput-object p5, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_empty:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iput-object p6, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$tv_username:[Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iput-object p7, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$tv_password:[Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iput-object p8, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$tv_title:[Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iput-object p9, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$liveOrForgotPwd:Ljava/lang/String;

    iput-object p10, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$title:Ljava/lang/String;

    iput-object p11, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$pin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBuildDone(Lcom/conceptglobal/imaterialdesign/app/Dialog;)V
    .locals 5

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 1868
    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->layoutParams(II)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    const/4 v0, 0x0

    .line 1869
    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1870
    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->setCancelable(Z)V

    .line 1871
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$mobilenumll:[Landroid/widget/LinearLayout;

    const v2, 0x7f0902fe

    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    aput-object v2, v1, v0

    .line 1872
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$userdetailsll:[Landroid/widget/LinearLayout;

    const v2, 0x7f0905e7

    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    aput-object v2, v1, v0

    .line 1873
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    const v2, 0x7f0901af

    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aput-object v2, v1, v0

    .line 1874
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_empty:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    const v2, 0x7f090158

    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aput-object v2, v1, v0

    .line 1875
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$tv_username:[Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const v2, 0x7f090597

    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    aput-object v2, v1, v0

    .line 1876
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$tv_password:[Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const v2, 0x7f090564

    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    aput-object v2, v1, v0

    .line 1877
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$tv_title:[Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const v2, 0x7f0904dd

    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    aput-object v2, v1, v0

    .line 1878
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$liveOrForgotPwd:Ljava/lang/String;

    const-string v2, "ForgotPwd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1879
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aget-object v1, v1, v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10021b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1880
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aget-object v1, v1, v0

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setInputType(I)V

    .line 1881
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aget-object v1, v1, v0

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 1882
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$liveOrForgotPwd:Ljava/lang/String;

    const-string v3, "Live"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1883
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aget-object v1, v1, v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_hintPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1884
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aget-object v1, v1, v0

    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setInputType(I)V

    .line 1885
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aget-object v1, v1, v0

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1886
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$tv_title:[Lcom/conceptglobal/imaterialdesign/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1888
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aget-object v0, v1, v0

    new-instance v1, Lcom/conceptglobal/pmc/LoginActivity$16$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/LoginActivity$16$1;-><init>(Lcom/conceptglobal/pmc/LoginActivity$16;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1896
    new-instance v0, Lcom/conceptglobal/pmc/LoginActivity$16$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/LoginActivity$16$2;-><init>(Lcom/conceptglobal/pmc/LoginActivity$16;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1906
    new-instance v0, Lcom/conceptglobal/pmc/LoginActivity$16$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/LoginActivity$16$3;-><init>(Lcom/conceptglobal/pmc/LoginActivity$16;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public onPositiveActionClicked(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V
    .locals 5

    .line 1921
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1922
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1923
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/LoginActivity;->access$1100(Lcom/conceptglobal/pmc/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1924
    invoke-super {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->onPositiveActionClicked(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V

    goto/16 :goto_0

    .line 1926
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_empty:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->requestFocus()Z

    .line 1927
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$liveOrForgotPwd:Ljava/lang/String;

    const-string v1, "ForgotPwd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$pin:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1928
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aget-object p1, p1, v2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterMobileNumFPDialog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1929
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$liveOrForgotPwd:Ljava/lang/String;

    const-string v3, "Live"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$pin:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1930
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aget-object p1, p1, v2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_notAValidPWError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1931
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$liveOrForgotPwd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$pin:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1932
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$1200(Lcom/conceptglobal/pmc/LoginActivity;)V

    goto :goto_0

    .line 1934
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$liveOrForgotPwd:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1936
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/LoginActivity;->access$1102(Lcom/conceptglobal/pmc/LoginActivity;Z)Z

    .line 1937
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/LoginActivity;->builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->getDialog()Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 1938
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$mobilenumll:[Landroid/widget/LinearLayout;

    aget-object p1, p1, v2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1939
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$userdetailsll:[Landroid/widget/LinearLayout;

    aget-object p1, p1, v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1940
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$tv_username:[Lcom/conceptglobal/imaterialdesign/widget/TextView;

    aget-object p1, p1, v2

    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/LoginActivity;->access$1300(Lcom/conceptglobal/pmc/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1941
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->val$tv_password:[Lcom/conceptglobal/imaterialdesign/widget/TextView;

    aget-object p1, p1, v2

    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/LoginActivity;->access$1400(Lcom/conceptglobal/pmc/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1943
    :cond_4
    invoke-super {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->onPositiveActionClicked(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V

    .line 1944
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$16;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$1200(Lcom/conceptglobal/pmc/LoginActivity;)V

    :goto_0
    return-void
.end method

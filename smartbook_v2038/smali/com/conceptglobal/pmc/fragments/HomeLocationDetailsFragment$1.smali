.class Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$1;
.super Ljava/lang/Object;
.source "HomeLocationDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->initialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 102
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->access$000(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "Please take Latitude and Longitude "

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->access$100(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "Please enter Address "

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 110
    :cond_1
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 111
    const-string v0, "HomeLatitude"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->access$000(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "HomeLongitude"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->access$200(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "HomeAddress"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->access$100(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "homelocationupdateddate"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "HomeLocationSyncStatus"

    const-string v1, "False"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateUserDetailsFOHomeLocation(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;-><init>()V

    const v1, 0x7f090100

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

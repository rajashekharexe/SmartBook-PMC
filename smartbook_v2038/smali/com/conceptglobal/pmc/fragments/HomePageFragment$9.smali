.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$9;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment;->showHomeLocationUpdateAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V
    .locals 0

    .line 1064
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$9;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1067
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1068
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$9;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    new-instance p2, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-direct {p2}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;-><init>()V

    const v0, 0x7f090100

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

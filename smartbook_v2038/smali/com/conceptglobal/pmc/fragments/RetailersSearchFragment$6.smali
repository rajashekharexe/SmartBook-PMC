.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$6;
.super Ljava/lang/Object;
.source "RetailersSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->enableGPS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V
    .locals 0

    .line 932
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 934
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SECURITY_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 935
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->startActivity(Landroid/content/Intent;)V

    .line 936
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

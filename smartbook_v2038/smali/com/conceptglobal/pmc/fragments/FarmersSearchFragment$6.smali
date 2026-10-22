.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$6;
.super Ljava/lang/Object;
.source "FarmersSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->enableGPS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 0

    .line 1022
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1024
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SECURITY_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1025
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->startActivity(Landroid/content/Intent;)V

    .line 1026
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.class Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$1;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 100
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 102
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.class Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$1;
.super Ljava/lang/Object;
.source "FilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 83
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 85
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->finish()V

    return-void
.end method

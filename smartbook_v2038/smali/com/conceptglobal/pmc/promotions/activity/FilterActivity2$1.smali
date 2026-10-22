.class Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$1;
.super Ljava/lang/Object;
.source "FilterActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 100
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->removeFilres()V

    .line 101
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$100(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)V

    .line 112
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$200(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Filters removed"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

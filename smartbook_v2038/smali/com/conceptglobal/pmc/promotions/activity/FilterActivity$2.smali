.class Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$2;
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

    .line 89
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 92
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->onCategoryFilterCheck()Ljava/util/ArrayList;

    move-result-object p1

    .line 93
    const-string v0, "Apply Filter: "

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "Nothing you have selected"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 98
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ")"

    const-string v2, "]"

    const-string v3, "("

    const-string v4, "["

    const-string v5, ""

    if-lez v0, :cond_2

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v5

    .line 101
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 105
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    const-string v1, "categories"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string p1, "contentType"

    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->finish()V

    :goto_2
    return-void
.end method

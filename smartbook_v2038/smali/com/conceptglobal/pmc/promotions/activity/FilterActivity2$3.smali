.class Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$3;
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

    .line 130
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 133
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->onCategoryselectedItems()Ljava/util/HashMap;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->onCategoryFilterCheck()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 135
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, ")"

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 140
    const-string v8, "(select ContentId FROM ContentCategoryMapping where CategoryId IN ("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_0

    .line 145
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_1

    .line 148
    const-string v6, " AND ContentId IN "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    const-class v3, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-direct {p1, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$300(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)I

    move-result v1

    const-string v3, "ContextId"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->title:Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v1, "categories"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "contentType"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_3
    const-string v0, "FilterCount"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->startActivity(Landroid/content/Intent;)V

    .line 161
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->finish()V

    goto :goto_1

    .line 163
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$400(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "Nothing you have selected"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

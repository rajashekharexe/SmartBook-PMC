.class Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$4;
.super Ljava/lang/Object;
.source "FilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->buildLabel(Ljava/lang/String;I)Landroid/widget/TextView;
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

    .line 241
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 246
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f08009e

    .line 247
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f08009f

    .line 251
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentTypes"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

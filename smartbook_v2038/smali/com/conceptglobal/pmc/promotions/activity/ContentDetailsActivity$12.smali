.class Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;
.super Ljava/lang/Object;
.source "ContentDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

.field final synthetic val$categories:Ljava/util/ArrayList;

.field final synthetic val$flowLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field final synthetic val$textView2:Landroid/widget/TextView;

.field final synthetic val$textView4:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1036
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->val$categories:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->val$flowLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object p4, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->val$textView2:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->val$textView4:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x5

    .line 1039
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->val$categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->val$flowLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->val$textView2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->removeView(Landroid/view/View;)V

    .line 1041
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->val$categories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$1800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 1042
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->val$flowLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1046
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->val$textView4:Landroid/widget/TextView;

    const-string v0, "See Less"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->val$flowLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;->val$textView4:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    return-void
.end method

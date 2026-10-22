.class Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;
.super Ljava/lang/Object;
.source "CustomerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 199
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$002(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 201
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$300(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "FarmerId"

    if-ne p1, v0, :cond_0

    .line 224
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 225
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$400(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)I

    move-result v0

    const-string v1, "SegmentId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FarmerName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 229
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)I

    move-result p1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_1

    .line 231
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$400(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 238
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$400(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

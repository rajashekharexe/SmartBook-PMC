.class Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$3;
.super Ljava/lang/Object;
.source "AttributesTableFarmatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

.field final synthetic val$attributeId:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1583
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    iput p2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$3;->val$attributeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1588
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$400(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1589
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$500(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)I

    move-result v0

    const-string v1, "activityId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1590
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$600(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)I

    move-result v0

    const-string v1, "assignmentId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1591
    const-string v0, "attributeId"

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$3;->val$attributeId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1592
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$700(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "farmerId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1593
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

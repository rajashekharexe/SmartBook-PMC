.class Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$5;
.super Ljava/lang/Object;
.source "AudianceChildAttributesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;ZLjava/util/Map;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

.field final synthetic val$attributeId:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1423
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$5;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    iput p2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$5;->val$attributeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1428
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$5;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1429
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$5;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$900(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v0

    const-string v1, "activityId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1430
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$5;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1000(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v0

    const-string v1, "assignmentId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1431
    const-string v0, "attributeId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$5;->val$attributeId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1432
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$5;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1100(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "farmerId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$5;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

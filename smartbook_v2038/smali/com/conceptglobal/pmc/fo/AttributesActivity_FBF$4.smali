.class Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$4;
.super Ljava/lang/Object;
.source "AttributesActivity_FBF.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

.field final synthetic val$attributeId:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 934
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    iput p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$4;->val$attributeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 938
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 939
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v0

    const-string v1, "activityId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 940
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v0

    const-string v1, "assignmentId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 941
    const-string v0, "attributeId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$4;->val$attributeId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 942
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$500(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "farmerId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

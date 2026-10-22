.class Lcom/conceptglobal/pmc/fo/AttributesActivity$9;
.super Ljava/lang/Object;
.source "AttributesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

.field final synthetic val$attributeId:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1663
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    iput p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$9;->val$attributeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1667
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$500(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1668
    const-string v0, "activityId"

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1669
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v0

    const-string v1, "assignmentId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1670
    const-string v0, "attributeId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$9;->val$attributeId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1671
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2200(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "farmerId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
